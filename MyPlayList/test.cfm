<head>
  <!--- <link type="text/css" href="/myplaylist/include/css/jplayer/blue.monday/jplayer.blue.monday.css" rel="stylesheet" /> --->
  <link type="text/css" href="/MyPlayList/include/css/jplayer/morning.light/morning.light.css" rel="stylesheet" />
  <script type="text/javascript" src="/myplaylist/include/js/jquery-1.8.0.min.js"></script>
  <script type="text/javascript" src="/myplaylist/include/js/jquery.jplayer.js"></script>
  <script type="text/javascript" src="/myplaylist/include/js/jplayer.playlist.js"></script>
	 <script type="text/javascript">
		  $(document).ready(function(){
		      $("#jquery_jplayer_1").jPlayer({
		        ready: function () {
		          /*$(this).jPlayer("setMedia", {
		            m4a: "http://www.jplayer.org/audio/m4a/Miaow-07-Bubble.m4a",
		            oga: "http://www.jplayer.org/audio/ogg/Miaow-07-Bubble.ogg"
		          });*/
		          $(this).jPlayer("setMedia", {
		            flv: "http://www.youtube.com/v/IAxj2ob_JoU?enablejsapi=1&playerapiid=jquery_jplayer_1&version=3"
		          });		          
		        },
		        swfPath: "/myplaylist/include/js",
		        solution: "html, flash",
		        supplied: "flv,mp3,mp4"
		      });
			});
			<!--- $(document).ready(function(){		
			new jPlayerPlaylist({
				jPlayer: "#jquery_jplayer_1",
				cssSelectorAncestor: "#jp_container_1"
			}, [
				{
					title:"Cro Magnon Man",
					mp3:"http://www.jplayer.org/audio/mp3/TSP-01-Cro_magnon_man.mp3",
					oga:"http://www.jplayer.org/audio/ogg/TSP-01-Cro_magnon_man.ogg"
				},
				{
					title:"Your Face",
					mp3:"http://www.jplayer.org/audio/mp3/TSP-05-Your_face.mp3",
					oga:"http://www.jplayer.org/audio/ogg/TSP-05-Your_face.ogg"
				},
				{
					title:"Cyber Sonnet",
					mp3:"http://www.jplayer.org/audio/mp3/TSP-07-Cybersonnet.mp3",
					oga:"http://www.jplayer.org/audio/ogg/TSP-07-Cybersonnet.ogg"
				},
				{
					title:"Tempered Song",
					mp3:"http://www.jplayer.org/audio/mp3/Miaow-01-Tempered-song.mp3",
					oga:"http://www.jplayer.org/audio/ogg/Miaow-01-Tempered-song.ogg"
				},
				{
					title:"Hidden",
					mp3:"http://www.jplayer.org/audio/mp3/Miaow-02-Hidden.mp3",
					oga:"http://www.jplayer.org/audio/ogg/Miaow-02-Hidden.ogg"
				},
				{
					title:"Lentement",
					free:true,
					mp3:"http://www.jplayer.org/audio/mp3/Miaow-03-Lentement.mp3",
					oga:"http://www.jplayer.org/audio/ogg/Miaow-03-Lentement.ogg"
				},
				{
					title:"Lismore",
					mp3:"http://www.jplayer.org/audio/mp3/Miaow-04-Lismore.mp3",
					oga:"http://www.jplayer.org/audio/ogg/Miaow-04-Lismore.ogg"
				},
				{
					title:"The Separation",
					mp3:"http://www.jplayer.org/audio/mp3/Miaow-05-The-separation.mp3",
					oga:"http://www.jplayer.org/audio/ogg/Miaow-05-The-separation.ogg"
				},
				{
					title:"Beside Me",
					mp3:"http://www.jplayer.org/audio/mp3/Miaow-06-Beside-me.mp3",
					oga:"http://www.jplayer.org/audio/ogg/Miaow-06-Beside-me.ogg"
				},
				{
					title:"Bubble",
					free:true,
					mp3:"http://www.jplayer.org/audio/mp3/Miaow-07-Bubble.mp3",
					oga:"http://www.jplayer.org/audio/ogg/Miaow-07-Bubble.ogg"
				},
				{
					title:"Stirring of a Fool",
					mp3:"http://www.jplayer.org/audio/mp3/Miaow-08-Stirring-of-a-fool.mp3",
					oga:"http://www.jplayer.org/audio/ogg/Miaow-08-Stirring-of-a-fool.ogg"
				},
				{
					title:"Partir",
					free: true,
					mp3:"http://www.jplayer.org/audio/mp3/Miaow-09-Partir.mp3",
					oga:"http://www.jplayer.org/audio/ogg/Miaow-09-Partir.ogg"
				},
				{
					title:"Thin Ice",
					mp3:"http://www.jplayer.org/audio/mp3/Miaow-10-Thin-ice.mp3",
					oga:"http://www.jplayer.org/audio/ogg/Miaow-10-Thin-ice.ogg"
				}
			], {
				swfPath: "/include/js",
		        supplied: "m4a, oga"
			});
		}); --->
	    
		 
		 		
	    function toggleStreamRadio(){
	    	//if jp is playing then stop.
	    	if($('#liveStream').length == 0){
	    		//uses video/x-ms-asf
		    	var x = '<div id="liveStream"><embed src="http://nyc03.egihosting.com/3208" width="0" height="0" /></div>';
	    		$("body").append(x);
	    	}
			else {
				$("#liveStream").remove();
			}	    		    	
	    }	    	    	    
	  </script>
</head>
<body>
  <div id="jquery_jplayer_1" class="jp-jplayer"></div>
  <div id="jp_container_1" class="jp-audio">
    <div class="jp-type-single">
      <div class="jp-gui jp-interface">
        <ul class="jp-controls">
		<li><a href="javascript:;" class="jp-previous" tabindex="1">previous</a></li>
		<li><a href="javascript:;" class="jp-play" tabindex="1">play</a></li>
		<li><a href="javascript:;" class="jp-pause" tabindex="1">pause</a></li>
		<li><a href="javascript:;" class="jp-next" tabindex="1">next</a></li>
		<!--- <li><a href="javascript:;" class="jp-stop" tabindex="1">stop</a></li> --->
		<li><a href="javascript:;" class="jp-mute" tabindex="1" title="mute">mute</a></li>
		<li><a href="javascript:;" class="jp-unmute" tabindex="1" title="unmute">unmute</a></li>
		<li><a href="javascript:;" class="jp-volume-max" tabindex="1" title="max volume">max volume</a></li>
        </ul>
        <div class="jp-progress">
          <div class="jp-seek-bar">
            <div class="jp-play-bar"></div>
          </div>
        </div>
        <div class="jp-volume-bar">
          <div class="jp-volume-bar-value"></div>
        </div>
        <div class="jp-time-holder">
          <div class="jp-current-time"></div>
          <div class="jp-duration"></div>
          <ul class="jp-toggles">
            <li><a href="javascript:;" class="jp-repeat" tabindex="1" title="repeat">repeat</a></li>
            <li><a href="javascript:;" class="jp-repeat-off" tabindex="1" title="repeat off">repeat off</a></li>
          </ul>
        </div>
      </div>
      <div class="jp-title">
        <ul>
          <li>Bubble</li>
        </ul>
      </div>
	<div class="jp-playlist">
		<ul>
			<li></li>
		</ul>
	</div>
      <div class="jp-no-solution">
        <span>Update Required</span>
        To play the media you will need to either update your browser to a recent version or update your <a href="http://get.adobe.com/flashplayer/" target="_blank">Flash plugin</a>.
      </div>
    </div>
  </div>
  
</body>