var gulp = require('gulp'),
    bundle = require('gulp-bundle-assets');

gulp.task('bundle', function() {
  gulp.src('./bundle.config.js')
      .pipe(bundle())
      .pipe(gulp.dest('./static'))
});
