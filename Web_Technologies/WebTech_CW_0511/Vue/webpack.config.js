const path = require('path');
const { VueLoaderPlugin } = require('vue-loader');
const HtmlWebpackPlugin = require('html-webpack-plugin');



module.exports = {

    entry: path.resolve(__dirname, './src/SHUMTszWai/main.js'), // 项目入口文件
    output: {
        path: path.resolve(__dirname, './dist'), // 输出目录
        filename: 'SHUMTszWai.js' // 输出文件名
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
                    'style-loader',
                    'css-loader' 
                ]
            },
            {
                test: /\.(png|jpg|gif|svg)$/, 
                loader: 'file-loader',
                options: {
                    name: '[name].[ext]?[hash]'
                }
            }
        ]
    },
    plugins: [
    new HtmlWebpackPlugin({
    template: path.resolve(__dirname, './public/SHUMTszWai.html'), 
    filename: 'index.html'
}),

    ],
    resolve: {
        alias: {
            '@': path.resolve(__dirname, './src'), 
            'vue$': 'vue/dist/vue.esm.js'
        },
        extensions: ['.js', '.vue'] 
    }
};
