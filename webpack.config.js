module.exports = {
   entry: "./src/js/index.js",
   output: {
      library: "legoQuotes",
      libraryTarget: "umd",
      filename: "lib/legoQuotes.js"
   },
   externals: [
      {
         lodash: {
            root: "_",
            commonjs: "lodash",
            commonjs2: "lodash",
            amd: "lodash"
         }
      }
   ],
   module: {
      loaders: [
         {
            test: /\.js$/,
            exclude: /node_modules/,
            loader: "babel",
            query: {
               compact: false
            }
         }
      ]
   }
};