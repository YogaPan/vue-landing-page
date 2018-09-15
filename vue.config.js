module.exports = {
  // broewser debug
  configureWebpack: {
    devtool: 'source-map'
  },
  css: {
    loaderOptions: {
      // pass options to sass-loader
      sass: {
        // @/ is an alias to src/
        // so this assumes you have a file named `src/main.scss`
        data: `@import "@/styles/main.scss";`
      }
    }
  }
}