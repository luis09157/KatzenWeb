import __dirname from './src/dir.js'

export default  {
    entry : '/src/app/index.js',
    output :{
        path : __dirname + "/public",
        filename :  'bundle.js'
    },
    module : {
        rules: [{
            loader: 'babel-loader',
            test: /\.(js|jsx)$/,
            exclude: /(node_modules|bower_components)/,
            options: { presets: ['@babel/env','@babel/preset-react'] }
        },
    ]
    }
};

