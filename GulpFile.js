var gulp = require('gulp');
var sass = require('gulp-sass');

gulp.task('main', function() {
    gulp.src('source/stylesheets/**/*.scss')
        .pipe(sass({
        	 outputStyle: 'compressed'
        	 }).on('error', sass.logError))
        .pipe(gulp.dest('source/stylesheets/'))
});

//Watch task
gulp.task('default',function() {
    gulp.watch('source/stylesheets/**/*.scss',['main']);
});


//script paths
var jsFiles = 'resources/scripts/**/*.js',  
    jsDest = 'dist/scripts';

gulp.task('scripts', function() {  
    return gulp.src(jsFiles)
        .pipe(concat('main.js'))
        .pipe(gulp.dest(jsDest))
        .pipe(rename('main.min.js'))
        .pipe(uglify())
        .pipe(gulp.dest(jsDest));
});