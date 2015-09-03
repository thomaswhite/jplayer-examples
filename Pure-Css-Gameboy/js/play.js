$(document).ready(function(){
  
  var mp3Path = 'https://archive.org/download/MemeroGameboyLsdjBreakcoreBerlinRavePartyTekno/',
      mp3Ext  = '.mp3',
      oggPath = 'https://archive.org/download/MemeroGameboyLsdjBreakcoreBerlinRavePartyTekno/',
      oggExt  = '.ogg';

  
  //****
  var musicHarry = [
    '16',
    'adapter',
    'against_melodies',
    'hardtek',
    'magenta',
    'orgo',
    'prezzo'
  ];
  var dio  = [];
  $.each( musicHarry , function( d, i ){
    dio.push(
      {
		    title : d+' - '+i ,
		    mp3   : mp3Path + i + mp3Ext,
		    oga   : oggPath + i + oggExt
	    }
	  );
	});      


  //****
  new jPlayerPlaylist({
	  jPlayer: "#jquery_jplayer_1",
	  cssSelectorAncestor: "#jp_container_1"
  },
    dio,
  {
	  swfPath: ".",
	  supplied: "webmv, ogv, m4v, oga, mp3",
	  play: function(){
	    $('.battery').css({'background':'#FF5200'});	    
	  },
	  pause: function(){
	    $('.battery').css({'background':'white'});
	  }
  });


	
});


