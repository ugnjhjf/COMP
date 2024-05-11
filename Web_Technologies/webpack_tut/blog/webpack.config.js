const path = require('path');
const HtmlWebpackPlugin = require('html-webpack-plugin');
const TerserPlugin = require('terser-webpack-plugin');//加载插件放入常量
const BundleAnalyzerPlugin = require('webpack-bundle-analyzer').BundleAnalyzerPlugin;

module.exports = {
    mode: 'development', //可以设置development或者production
    devtool:"inline-source-map",
    entry: './src/index.js', //入口文件路径
    output: {
        filename: 'dist.js', //打包后的文件名
        // filename: '[name].[contenthash].js', //打包后的文件名(增加hash值，每次文件不同名字，防止浏览器缓存)
        // path: __dirname + '/dist' //打包后的文件存放路径 (单层)
        path: path.resolve(__dirname, 'dist') //打包后的文件存放路径
    },
    resolve:{
        alias:{
        utils: path.resolve(__dirname, 'src/utils'),
        }
    },
    optimization:{ //使用teser插件压缩文件大小，base64编码，反人类阅读法
        minimize: true,
        minimizer: [new TerserPlugin()],
    },
    devServer:{
        static:"./dist",
    },
    plugins:[new HtmlWebpackPlugin({
        title: "博客列表",
    }),
    new BundleAnalyzerPlugin(),
    ],
    module:{
        rules:[
            {
            test:/\.css$/i,
            use:["style-loader","css-loader"],
        },{
            test:/\.(png|svg|jpg|jpeg|gif)$/i,
            type: 'asset/resource',
        },{
            test:/\.js$/,
            exclude: /node_modules/,
            use:{
                loader: 'babel-loader',
                options:{
                    presets:["@babel/preset-env"],
                }
            }
        }
        ],
    }
};