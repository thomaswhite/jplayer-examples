var prodLikeEnvs = ['production', 'staging'];
module.exports = {
    bundle: {
        main: {
            scripts: [
                './src/js/main.js'
            ],
            options: {
                rev: prodLikeEnvs,
                watch: {
                    scripts: true
                }
            }
        },
        vendor: {
            scripts: [
                './bower_components/jquery/dist/jquery.min.js',
                './bower_components/javascript-playlist-parser/lib/parser.min.js',
                './bower_components/jplayer/dist/jplayer/jquery.jplayer.js',
                './bower_components/jplayer/dist/add-on/jplayer.playlist.min.js'
            ],
            styles: './bower_components/jplayer/skin/pink.flag/jplayer.pink.flag.css',
            options: {
                rev: prodLikeEnvs,
                watch: {
                    scripts: false,
                    styles: false
                }
            }
        }
    },
    copy: [{
            src: './bower_components/jplayer/skin/pink.flag/*.{png,jpg,gif}',
            base: './bower_components/jplayer/skin/pink.flag'
        }, {
            src: './src/audio/*.{mp3,m3u}',
            base: './src'
        }]
};
