jQuery(document).ready(function () {

    var xhr = new XMLHttpRequest();
    xhr.open("GET", "static/audio/test.m3u");
    xhr.overrideMimeType("audio/x-mpegurl");
    xhr.onload = parse;
    xhr.send();

    function parse() {
        var playlist = M3U.parse(this.response);
        buildPlaylist(playlist);
    }

    function buildPlaylist(playlist) {
        var tracks = new Array(playlist.length);
        jQuery.each(playlist, function (i, track) {
            tracks[i] = {
                title: track.artist + " - " + track.title,
                mp3: track.file,
                free: false
            };
        });
        var jplayer = new jPlayerPlaylist({
                    jPlayer: "#jquery_jplayer_1",
                    cssSelectorAncestor: "#jp_container_1"
                },
                tracks,
                {
                    swfPath: "static/lib/jplayer/",
                    supplied: "mp3",
                    wmode: "window",
                    useStateClassSkin: true,
                    autoBlur: false,
                    smoothPlayBar: true,
                    keyEnabled: true
                });
    }
});
