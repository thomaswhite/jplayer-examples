<!DOCTYPE html>
<html lang="en">
	<head>
	    <meta charset="utf-8">
	    <title>Components · Twitter Bootstrap</title>
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <meta name="description" content="">
	    <meta name="author" content="">
	
	    <!-- Le styles -->
	    <link href="/myplaylist/include/css/bootstrap.css" rel="stylesheet">
	    <link href="/myplaylist/include/css/bootstrap-responsive.css" rel="stylesheet">
	    <link href="/myplaylist/include/css/docs.css" rel="stylesheet">
		<!--- <link type="text/css" href="/MyPlayList/include/css/jplayer/morning.light/morning.light.css" rel="stylesheet" /> --->
		<!--- <link type="text/css" href="/myplaylist/include/css/jplayer/blue.monday/jplayer.blue.monday.css" rel="stylesheet" /> --->
		<link type="text/css" href="/MyPlayList/include/css/jplayer/midnight.black/jplayer.midnight.black.css" rel="stylesheet" />
	
	    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
	    <!--[if lt IE 9]>
	      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	    <![endif]-->
	
	    <!-- Le fav and touch icons -->
	    <link rel="shortcut icon" href="/myplaylist/include/ico/favicon.ico">
	    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/myplaylist/include/ico/apple-touch-icon-144-precomposed.png">
	    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/myplaylist/include/ico/apple-touch-icon-114-precomposed.png">
	    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/myplaylist/include/ico/apple-touch-icon-72-precomposed.png">
	    <link rel="apple-touch-icon-precomposed" href="/myplaylist/include/ico/apple-touch-icon-57-precomposed.png">
	    <script type="text/javascript" src="/MyPlayList/include/js/jquery-1.8.0.min.js"></script>
	    
	    <style></style>
	    
<!--- 	    <link href="include/css/antiscroll.css" rel="stylesheet">
	    <script type="text/javascript" src="include/js/jquery-mousewheel.js"></script>
	    <script type="text/javascript" src="include/js/antiscroll.js"></script> --->
	    	    
	    <script type="text/javascript">
			$(document).ready(function(){		
			new jPlayerPlaylist({
				jPlayer: "#jquery_jplayer_1",
				cssSelectorAncestor: "#jp_container_1"
			}, [
				{
					title:"Tiger Theme",
					mp3:"audio/TigersTheme.mp3"
				},
				{
					title:"Tiger Saiyaara",
					mp3:" audio/Saiyaara.mp3"
				},
				{
					title:"Tiget Mashallah",
					mp3:"audio/Mashallah.mp3"
				},
				{
					title:"Tiget Mashallah Remix",
					mp3:"audio/Mashallah(Remix).mp3"
				},
				{
					title:"Laapata (Remix)",
					mp3:"audio/Laapata(Remix).mp3"
				},
				{
					title:"Banjaara",
					free:true,
					mp3:"audio/Banjaara.mp3"
				},
				{
					title:"Banjaara(Remix)",
					mp3:"audio/Banjaara(Remix).mp3"
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
		        supplied: "mp3, m4a, oga"
			});
		});		
		function loadData(Id){
			$('#container').empty();
			$('#container')[0].innerHTML = Id;
		}		
		</script>		
		<style type="text/css">
	      body {
	        padding-top: 60px;
	        padding-bottom: 40px;
	      }
	      .sidebar-nav {
	        padding: 9px 0;
	      }
	      .jp-playlist-current {
	      	font
	      }
		</style>
	</head>

	  <body>	 
		<header>
		<div class="navbar navbar-inverse navbar-fixed-top">
	      <div class="navbar-inner">
	        <div class="container">                 
               <a href="#" class="brand pull-left">Title</a>
               <div class="nav-collapse">                     
				<ul class="nav">
				  	<li>
					  	<form action="" class="navbar-search form-search">
	                     <div class="input-append">
						    <input id="searchItem" type="text" placeholder="Search" class="span3 search-query">
						    <button id="searchButton" type="button" class="btn" style="margin-top: 0px;">Search</button>
						  </div>	                      	
	                   </form>		                        
					</li>
					<li class="dropdown">
                     <a data-toggle="dropdown" class="dropdown-toggle" href="#">Dropdown <b class="caret"></b></a>
                     <ul class="dropdown-menu">
                       <li><a href="#">Action</a></li>
                       <li><a href="#">Another action</a></li>
                       <li><a href="#">Something else here</a></li>
                       <li class="divider"></li>
                       <li><a href="#">Separated link</a></li>
                     </ul>
                   </li>
				<li><a href="#">Top 15</a></li>                      
                 </ul>                   
                 <ul class="nav pull-right">                      
                   <li class="divider-vertical"></li>
                   <li class="dropdown">
                     <a data-toggle="dropdown" class="dropdown-toggle" href="#">Dropdown <b class="caret"></b></a>
                     <ul class="dropdown-menu">
                       <li><a href="#">Action</a></li>
                       <li><a href="#">Another action</a></li>
                       <li><a href="#">Something else here</a></li>
                       <li class="divider"></li>
                       <li><a href="#">Separated link</a></li>
                     </ul>
                   </li>
                 </ul>
               </div><!-- /.nav-collapse -->
             </div>
	      </div>
	    </div>		
		</header>		
		<div class="container-fluid">
		<div class="row-fluid">
		  <div class="span2" >		  
		    <!--- <div class="sidebar-nav">							
		      <ul class="nav nav-list">
		        <li class="nav-header">Playlists</li>
		        <li><a href="#">Most popular</a></li>
		        <li><a href="#">Top Rates</a></li>
   		        <li><a href="#">Random</a></li>	
				<li><a href="#">Romantic</a></li>
				<li><a href="#">Oldies</a></li>
	            <li class="nav-header">Move Trailers</li>		        
	            <li><a href="#">New Movies</a></li>	
	            <li><a href="#">New Songs</a></li>	
		        <li class="nav-header">My Playlist</li>	
		        <li><a href="#">Romantic</a></li>	
	            <li><a href="#">Hiphop</a></li>	
	            <li class="nav-header">Move Trailers</li>		        
	            <li><a href="#">New Movies</a></li>	
	            <li><a href="#">New Songs</a></li>	
		        <li class="nav-header">My Playlist</li>	
		        <li><a href="#">Romantic</a></li>	
	            <li><a href="#">Hiphop</a></li>	
	            <li class="nav-header">Now Playing</li>		      	        	
		      </ul>
		      <ul class="nav nav-list">
				<li class="nav-header">People</li>
			  </ul>
				<div id="jp_container_1" class="" style="display:block;">
					<div class="jp-type-playlist">						     
						<div class="jp-playlist">
							<ul class="nav nav-tabs nav-pills nav-stacked">
								<li></li>
							</ul>
						</div>
					</div>
				</div>
		    </div><!--/.well -->--->
			
	        <div id="side_accordion" class="accordion" >
			        <!--- <div class="antiscroll-wrap" style="height: 600px;">
			        <div class="antiscroll-inner"> --->					
				<div class="accordion-group">
					<div class="accordion-heading sdb_h_active">
						<a href="#collapseOne" data-parent="#side_accordion" data-toggle="collapse" class="accordion-toggle">
							<i class="icon-folder-close"></i> Songs
						</a>
					</div>
					<div class="accordion-body in collapse" id="collapseOne" style="height: auto; ">
						<div class="accordion-inner">
							<ul class="nav nav-list">
								<li><a href="javascript:loadData('Top 20');">Top 20</a></li>								
								<li><a href="javascript:loadData('New Release');">New Release</a></li>								
								<li><a href="javascript:loadData('Love');">Love</a></li>
								<li><a href="javascript:loadData('Remix');">Remix</a></li>
								<li><a href="javascript:loadData('Wedding');">Wedding</a></li>
								<li><a href="javascript:loadData('New Release');">New Release</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="accordion-group">
					<div class="accordion-heading">
						<a href="#collapseTwo" data-parent="#side_accordion" data-toggle="collapse" class="accordion-toggle">
							<i class="icon-th"></i> Radios
						</a>
					</div>
					<div class="accordion-body collapse" id="collapseTwo">
						<div class="accordion-inner">
							<ul class="nav nav-list">
								<li><a href="javascript:loadData('Hum Tum Radio');">Hum Tum Radio</a></li>								
								<li><a href="javascript:loadData('Sangeet Radio');">Sangeet Radio</a></li>								
							</ul>
						</div>
					</div>
				</div>
				<div class="accordion-group">
					<div class="accordion-heading">
						<a href="#collapseThree" data-parent="#side_accordion" data-toggle="collapse" class="accordion-toggle">
							<i class="icon-user"></i> Videos
						</a>
					</div>
					<div class="accordion-body collapse" id="collapseThree" style="height: 0px; ">
						<div class="accordion-inner">
							<ul class="nav nav-list">
								<li><a href="javascript:loadData('Trailers');">Trailers</a></li>
								<li><a href="javascript:loadData('Songs');">Songs</a></li>								
								<li><a href="javascript:loadData('Youtube');">Youtube</a></li>
							</ul>
                                  
						</div>
					</div>
				</div>
				<div class="accordion-group">
					<div class="accordion-heading">
						<a href="#collapseFour" data-parent="#side_accordion" data-toggle="collapse" class="accordion-toggle">
							<i class="icon-cog"></i> My Playlist
						</a>
					</div>
					<div class="accordion-body collapse" id="collapseFour">
						<div class="accordion-inner">
							<ul class="nav nav-list">
								<li><a href="javascript:loadData('Mood Swing');">Mood Swing</a></li>								
							</ul>
						</div>
					</div>
				</div>						
			  <ul class="nav nav-list">
				<li class="nav-header">Now Playing</li>
			  </ul>
				<div id="jp_container_1" class="" style="display:block;">
					<div class="jp-type-playlist">						     
						<div class="jp-playlist">
							<ul class="nav nav-tabs nav-pills nav-stacked">
								<li></li>
							</ul>
						</div>
					</div>
				</div>
				<!--- 
</div>
			</div>
 --->
			  
			</div>		    
		  </div><!--/span-->
		  <div class="span9" id="container">
			<div class="row-fluid" >
				<div class="span6"><div id="player" ></div></div>
				<div class="span3" id="videoPlaylist" style="width: 140px; height: 385px; overflow-y: scroll;"></div>
				<div style="clear: both;"></div>
			</div>		   
		    <div class="row-fluid" style="">
		      <div id="mybox" style="float: left; width: 100%; height: 330px; overflow-y: scroll;"></div>
		    </div><!--/row-->
		    <div class="row-fluid">		      
		    </div><!--/row-->
		  </div><!--/span-->
		</div><!--/row-->
		
		<hr>
    	<footer><!-- footer -->
			<div class="navbar navbar-fixed-bottom">
	           <div class="navbar-inner">
					<div><!--- class="container" --->						 							
							<div id="jquery_jplayer_1" class="jp-jplayer"></div>
							  <div id="jp_container_1" class="jp-audio" style="width:100%;">
							    <div class="jp-type-single">
							      <div class="jp-gui jp-interface">							        
							        <ul class="jp-controls">
										<li><a href="javascript:;" class="jp-previous" tabindex="1">previous</a></li>
										<li><a href="javascript:;" class="jp-play" tabindex="1">play</a></li>
										<li><a href="javascript:;" class="jp-pause" tabindex="1">pause</a></li>
										<li><a href="javascript:;" class="jp-next" tabindex="1">next</a></li>										
										<li><a href="javascript:;" class="jp-mute" tabindex="1" title="mute">mute</a></li>
										<li><a href="javascript:;" class="jp-unmute" tabindex="1" title="unmute">unmute</a></li>
										<li><a href="javascript:;" class="jp-volume-max" tabindex="1" title="max volume">max volume</a></li>
							        </ul>							      
							        
							        <div style="">
								        <div class="jp-progress">
								          <div class="jp-seek-bar">
								            <div class="jp-play-bar"></div>
								          </div>
								        </div>							        
									</div>
																        
							        <div class="jp-volume-bar" style="">
							          <div class="jp-volume-bar-value"></div>							         
							        </div>							        						        
							        <div class="jp-time-holder">
							          <div class="jp-current-time"></div>
							          <div class="jp-duration"></div>								           						          
							        </div>							    
							        <ul class="jp-toggles">
										<li><a href="javascript:;" class="jp-shuffle" tabindex="1" title="shuffle" style="">shuffle</a></li>
										<li><a href="javascript:;" class="jp-shuffle-off" tabindex="1" title="shuffle off" style="display: none; ">shuffle off</a></li>
										<li><a href="javascript:;" class="jp-repeat" tabindex="1" title="repeat" style="">repeat</a></li>
										<li><a href="javascript:;" class="jp-repeat-off" tabindex="1" title="repeat off" style="display: none; ">repeat off</a></li>
									</ul>    
							      </div>							      
							      <div class="jp-no-solution">
							        <span>Update Required</span>
							        To play the media you will need to either update your browser to a recent version or update your <a href="http://get.adobe.com/flashplayer/" target="_blank">Flash plugin</a>.
							      </div>
							    </div>
							  </div>
					</div>
	           </div><!-- /navbar-inner -->
			</div>
    	</footer>						
			<script type="text/javascript" src="include/js/bootstrap.min.js"></script>
			<script type="text/javascript" src="include/js/jquery.jplayer.js"></script>
			<script type="text/javascript" src="include/js/jplayer.playlist.js"></script>		
			<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/swfobject/2.2/swfobject.js"></script>
			<script type="text/javascript" src="include/js/youtube.js"></script>			
	</body>
</html>