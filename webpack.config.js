import __dirname from "./src/dir.js";

export default {
  entry: "/src/app/index.js",
  output: {
    path: __dirname + "/public",
    filename: "bundle.js",
  },
  module: {
    rules: [
      {
        loader: "babel-loader",
        test: /\.(js)$/,
        exclude: /(node_modules)/,
        options: { presets: ["@babel/env", "@babel/preset-react"] },
      },
      {
        test: /\.m?js/,
        type: "javascript/auto",
      },
      {
        test: /\.m?js/,
        resolve: {
          fullySpecified: false,
        },
      },
    ],
  },
};
