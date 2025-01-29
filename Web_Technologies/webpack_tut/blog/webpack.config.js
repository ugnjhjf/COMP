const path = require('path');
const { VueLoaderPlugin } = require('vue-loader');
const HtmlWebpackPlugin = require('html-webpack-plugin');

module.exports = {

    entry: path.resolve(__dirname, './src/main.js'), // 项目入口文件
    output: {
        path: path.resolve(__dirname, './dist'), // 输出目录
        filename: 'bundle.js' // 输出文件名
    },
    module: {
        rules: [
            {
                test: /\.vue$/, // 处理 .vue 文件
                loader: 'vue-loader'
            },
            {
                test: /\.js$/, // 处理 .js 文件
                loader: 'babel-loader',
                exclude: /node_modules/ // 排除 node_modules 目录
            },
            {
                test: /\.css$/, // 处理 CSS 文件
                use: [
                    'style-loader', // 将 CSS 注入到 DOM 中
                    'css-loader' // 解析 CSS 文件
                ]
            },
            {
                test: /\.(png|jpg|gif|svg)$/, // 处理图片文件
                loader: 'file-loader',
                options: {
                    name: '[name].[ext]?[hash]'
                }
            }
        ]
    },
    plugins: [
        new VueLoaderPlugin(), // 必须添加 VueLoaderPlugin
        new HtmlWebpackPlugin({
            template: path.resolve(__dirname, './public/index.html'), // HTML 模板路径
            filename: 'index.html' // 输出的 HTML 文件名
        })
    ],
    resolve: {
        alias: {
            'vue$': 'vue/dist/vue.esm.js' // 定义别名确保编译模板
        },
        extensions: ['.js', '.vue'] // 自动解析确定的扩展
    }
};
