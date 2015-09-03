$(document).ready(function(){

    new jPlayerPlaylist({
        jPlayer: "#jquery_jplayer_1",
        cssSelectorAncestor: "#jp_container_1"
    }, [
        {
            title:"Cheap Sunglasses",
            mp3:"http://www.mcgearymedia.com/samples/jukebox/audio/cheap_sunglasses.mp3",
            oga:"http://www.mcgearymedia.com/samples/jukebox/audio/cheap_sunglasses.ogg"
        },
        {
            title:"Girls, Guns, Gold",
            mp3:"http://www.mcgearymedia.com/samples/jukebox/audio/GirlsGunsGoldv2.mp3",
            oga:"http://www.mcgearymedia.com/samples/jukebox/audio/GirlsGunsGoldv2.ogg"
        },
        {
            title:"Bust A Move",
            mp3:"http://www.mcgearymedia.com/samples/jukebox/audio/bustamove02.mp3",
            oga:"http://www.mcgearymedia.com/samples/jukebox/audio/bustamove02.ogg"
        },
        {
            title:"Crying Dust",
            mp3:"http://www.mcgearymedia.com/samples/jukebox/audio/crying_dust.mp3",
            oga:"http://www.mcgearymedia.com/samples/jukebox/audio/crying_dust.ogg"
        },
        {
            title:"Last Stand",
            mp3:"http://www.mcgearymedia.com/samples/jukebox/audio/last_stand.mp3",
            oga:"http://www.mcgearymedia.com/samples/jukebox/audio/last_stand.ogg"
        },
        {
            title:"Since I've Been Loving You",
            mp3:"http://www.mcgearymedia.com/samples/jukebox/audio/since.mp3",
            oga:"http://www.mcgearymedia.com/samples/jukebox/audio/since.ogg"
        },
    ], {
        playlistOptions: {
            autoPlay: false,
            loopOnPrevious: false,
            shuffleOnLoop: true,
            enableRemoveControls: false,
            displayTime: 0,
            addTime: 0,
            removeTime: 0,
            shuffleTime: 0
            },
        swfPath: "js",
        supplied: "mp3, oga",
        wmode: "window",
        smoothPlayBar: false,
        keyEnabled: true
    });
});