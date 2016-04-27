var gulp = require("gulp");
var webpack = require("webpack-stream");
var sourcemaps = require("gulp-sourcemaps");
var babel = require("gulp-babel");
var rename = require("gulp-rename");
var uglify = require("gulp-uglify");

gulp.task("default", function() {
   return gulp.src("src/js/index.js")
      .pipe(babel())
      .pipe(webpack(require("./webpack.config.js")))
      .pipe(gulp.dest("./src/js/dist"))
      .pipe(sourcemaps.init({loadMaps: true}))
      .pipe(uglify())
      .pipe(rename("legoQuotes.min.js"))
      .pipe(sourcemaps.write("./"))
      .pipe(gulp.dest("./src/js/dist/"));
});