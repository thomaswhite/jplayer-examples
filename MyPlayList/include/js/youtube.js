var ytplayer_playlist = [];
var ytplayer_playitem = 0;
var ytplayer_playlistClone = [];
var duration = 0;
var volume = 100;
function setup(){					 
    var params = { allowScriptAccess: "always" };
    // The element id of the Flash embed
    var atts = { id: "ytPlayer" };
    // All of the magic handled by SWFObject (http://code.google.com/p/swfobject/)
    swfobject.embedSWF("http://www.youtube.com/apiplayer?version=3&enablejsapi=1&playerapiid=player1","player", "640", "385", "9", null, null, params, atts);
}

// This function is automatically called by the player once it loads
 function onYouTubePlayerReady(playerId) {
	ytplayer = document.getElementById("ytPlayer");
	// This causes the updatePlayerInfo function to be called every 250ms to
	// get fresh data from the player
	setInterval(updatePlayerInfo, 250);	
	ytplayer.addEventListener("onStateChange", "onPlayerStateChange");
	ytplayer.addEventListener("onError", "onPlayerError");
 }	
 
 function loadVideo(vidId){
	 ytplayer_playitem = ytplayer_playlist.indexOf(vidId);
	 if (ytplayer){
		 ytplayer.loadVideoById(vidId);
		 playVideo();
	 }
 }
 
 // Display information about the current state of the player
  function updatePlayerInfo() {
    if(ytplayer && ytplayer.getDuration) {
    	
    	progressbar((ytplayer.getCurrentTime()*100)/ytplayer.getDuration() + "%");
    	setDuration(ytplayer.getDuration());
    	setCurrentTime(ytplayer.getCurrentTime());    	    
    }
  }
  
  function progressbar(percent){	
	  //console.log(percent);
	$(".jp-play-bar").css( "width",percent);
  }
  function setDuration(totalSeconds){
	  if(parseInt(totalSeconds) > 0){
		  duration = Math.round(totalSeconds);
		  var hours = parseInt( Math.round(totalSeconds) / 3600 ) % 24;
		  var minutes = parseInt( Math.round(totalSeconds) / 60 ) % 60;
		  var seconds = Math.round(totalSeconds) % 60;
		  var time = "";		  
		  if(hours > 0){
			  time = (hours < 10 ? "0" + hours : hours) + ":";
		  }
		  
		  var time = time + (minutes < 10 ? "0" + minutes : minutes) + ":" + (seconds  < 10 ? "0" + seconds : seconds);
	  	  $(".jp-duration")[0].innerHTML = time 
	  }
  }
  
  function setCurrentTime(totalSeconds){
	  var hours = parseInt( Math.round(totalSeconds) / 3600 ) % 24;
	  var minutes = parseInt( Math.round(totalSeconds) / 60 ) % 60;
	  var seconds = Math.round(totalSeconds) % 60;
	  var time = "";		  
	  if(hours > 0){
		  time = (hours < 10 ? "0" + hours : hours) + ":";
	  }
	  
	  var time = time + (minutes < 10 ? "0" + minutes : minutes) + ":" + (seconds  < 10 ? "0" + seconds : seconds);
  	  $(".jp-current-time")[0].innerHTML = time 
  }
  
   // Update a particular HTML element with a new value
  function updateHTML(elmId, value) {
	  if(elmId){
		  elmId.innerHTML = value;
	  }
    //document.getElementById(elmId).innerHTML = value;
  }
  
  // This function is called when an error is thrown by the player
  function onPlayerError(errorCode) {
    alert("An error occured of type:" + errorCode);
  }
  
  // This function is called when the player changes state
  function onPlayerStateChange(newState) {	  
	  if(newState == 0){
		  
		  if($(".jp-repeat-off")[0].style.display == ""){
			  loadVideo(ytplayer_playlist[ytplayer_playitem]);  
		  }
		  else {
			  ytplayer_playitem += 1;
			  ytplayer_playitem %= ytplayer_playlist.length;
			  loadVideo(ytplayer_playlist[ytplayer_playitem]);
		  }
	  }
    updateHTML("playerState", newState);
  }			    

   // Allow the user to set the volume from 0-100
  function setVolume(e) {	 
	 var vol = e.offsetX;	
	if(ytplayer){
      ytplayer.setVolume(vol);
      $(".jp-volume-bar-value").css( "width",vol + "%");
    }
  }
  
  function playVideo() {  					      	
    if (ytplayer) {
      ytplayer.playVideo();	
      $(".jp-pause")[0].style.display = "block";
      $(".jp-play")[0].style.display = "none";
    }
  }
  
  function stopVideo() {
    if (ytplayer) {
      ytplayer.stopVideo();
      $(".jp-pause")[0].style.display = "none";
      $(".jp-play")[0].style.display = "block";
    }
  }
  
  function pauseVideo() {
  	
    if (ytplayer) {
      ytplayer.pauseVideo();
      $(".jp-pause")[0].style.display = "none";
      $(".jp-play")[0].style.display = "block";				          
    }
  }  
  
  function seekVideoTo(seconds){//seconds:Number, allowSeekAhead:Boolean
  	if(ytplayer) {
  		ytplayer.seekTo(seconds,true);
  	}
  }

function handleStartPause(){	
	$(".jp-pause").attr("class", "jp-play");
	$(".jp-play").attr("class", "jp-pause");
}

function findVids(keyword){
	
	if(keyword){
		keyword = keyword;
	}
	else {
		keyword = $("#searchItem").val();
	}
	if(!keyword.trim() == ""){
		$.getJSON('https://gdata.youtube.com/feeds/api/videos?v=2&alt=jsonc&q='+ encodeURI(keyword) +'&category=Music&orderby=relevance&max-results=25&format=5', function(data) {
			$('#mybox').empty();
			$.each(data.data.items, function(i, item) {
				var title = item.title;
				var videoID = item.id;
				var video = item.content[5];						
				var thumbnail = item.thumbnail.sqDefault;
				$('#mybox').append('<a onclick="addToPlayList(\''+ videoID +'\',\''+ thumbnail +'\')" href="javascript:void(0);"><img class="img-polaroid" src="'+ thumbnail +'"></a>');
			});	
			$('#mybox').append('<a id="loadMore" onclick="loadMore(\''+ encodeURI(keyword) +'\',\''+ data.data.items.length + '\')" href="javascript:void(0);"><img class="img-polaroid" src="include/img/loadMore.png"></a>');
			setTimeout("resultScrollbar()",500);			
		});
	}	
}

function loadMore(keyword,lastStop){	
	$("#loadMore").remove();
	$.getJSON('https://gdata.youtube.com/feeds/api/videos?v=2&alt=jsonc&q='+ keyword +'&category=Music&orderby=relevance&&start-index='+ (parseInt(lastStop)+1) +'&max-results=25&format=5', function(data) {				
		$.each(data.data.items, function(i, item) {			
			var title = item.title;
			var videoID = item.id;
			var video = item.content[5];						
			var thumbnail = item.thumbnail.sqDefault;
			$('#mybox').append('<a onclick="addToPlayList(\''+ videoID +'\',\''+ thumbnail +'\')" href="javascript:void(0);"><img class="img-polaroid" src="'+ thumbnail +'"></a>');
		});
		$('#mybox').append('<a id="loadMore" onclick="loadMore(\''+ keyword +'\',\''+ (parseInt(lastStop) + data.data.items.length) + '\')" href="javascript:void(0);"><img class="img-polaroid" src="include/img/loadMore.png"></a>');
		setTimeout("resultScrollbar()",500);			
	});		
}

function addToPlayList(vidId, thumbnail){	
	$('#videoPlaylist').append('<div style="position:relative;" onmouseover="toggleRemoveButton(this);" onmouseout="toggleRemoveButton(this);"><div onclick="removeFromPlayList(this.parentElement, \''+ vidId +'\');" style="display:none;position:absolute;z-index:3;right:-3px;top:5px;"><span class="label label-info">remove</span></div><a class"playlistItem" onclick="loadVideo(\''+ vidId +'\');" href="javascript:void(0);"><img class="img-polaroid" src="'+ thumbnail +'"></a></div>');
	ytplayer_playlist.push(vidId);	
	if(ytplayer_playlist.length == 1){
		loadVideo(vidId);
	}	
	setTimeout("handelScrollbar()",100);	
}

function removeFromPlayList(el,id){	
  ytplayer_playlist.splice(ytplayer_playlist.indexOf(id),1);
  ytplayer_playlistClone.splice(ytplayer_playlistClone.indexOf(id),1);
  debugger;
  $(el).remove();
	 
}

function toggleRemoveButton(el){	
	el.children[0].style.display == "block" ? el.children[0].style.display = "none" : el.children[0].style.display = "block";
	
}

function resultScrollbar(){
	//
	$('#result.nano').nanoScroller();
	$('#result.nano').nanoScroller({ scroll: 'bottom' });
}

function handelScrollbar(){
	$('.span2.sidebar.right .nano').nanoScroller();
	$('.span2.sidebar.right .nano').nanoScroller({ scroll: 'bottom' });
}

function seekForward(e){	
	var currentPercent = e.offsetX;	
	var percentInTime = parseFloat(currentPercent) * duration / $(".jp-seek-bar").width();
	seekVideoTo(percentInTime);
	
}

function nextItem(){
	var nextIndex = ytplayer_playitem + 1;	
	if(nextIndex > ytplayer_playlist.length){
		nextIndex = 0;
	}
	loadVideo(ytplayer_playlist[nextIndex]);
}

function previousItem(){
	var previousIndex = ytplayer_playitem - 1;	
	if(previousIndex == -1){
		previousIndex = ytplayer_playlist.length-1;
	}	
	loadVideo(ytplayer_playlist[previousIndex]);	
}

function playVideoAt(index){
	if (ytplayer){
		ytplayer.playVideoAt(index);
	}
}

function shuffle(){
	$('#videoPlaylist').empty();
	var currentVidId = ytplayer_playlist[ytplayer_playitem];
	ytplayer_playlistClone = ytplayer_playlist;
	for(var j, x, i = ytplayer_playlist.length; i; j = parseInt(Math.random() * i), x = ytplayer_playlist[--i], ytplayer_playlist[i] = ytplayer_playlist[j], ytplayer_playlist[j] = x);
	for(var m=0; m<ytplayer_playlist.length;m++){
		if(ytplayer_playlist[m] == currentVidId){
			ytplayer_playitem = m;
		}
		$('#videoPlaylist').append('<a onclick="loadVideo(\''+ ytplayer_playlist[m] +'\');" href="javascript:void(0);"><img class="img-polaroid" src="http://i.ytimg.com/vi/'+ ytplayer_playlist[m] +'/default.jpg"></a>');
	}
}

function undoShuffle(){
	ytplayer_playlist = ytplayer_playlistClone;
	for(var m=0; m<ytplayer_playlist.length;m++){
		if(ytplayer_playlist[m] == currentVidId){
			ytplayer_playitem = m;
		}
		$('#videoPlaylist').append('<a onclick="loadVideo(\''+ ytplayer_playlist[m] +'\');" href="javascript:void(0);"><img class="img-polaroid" src="http://i.ytimg.com/vi/'+ ytplayer_playlist[m] +'/default.jpg"></a>');
	}
	//any missing item added to the end.
}

$(document).ready(function(){	
	window.addEventListener('submit', abortSubmit, true);
	$(".jp-pause")[0].style.display = "none";
	$(".jp-unmute")[0].style.display = "none";
	$(".jp-play").click(function(){playVideo();});
	$(".jp-pause").click(function(){pauseVideo();});
	$("#searchButton").click(function(){findVids();});
	$(".jp-seek-bar")[0].addEventListener('click', seekForward, false);
	$(".jp-volume-bar")[0].addEventListener('click', setVolume, false);
	$(".jp-next").click(function(){nextItem();});
	$(".jp-previous").click(function(){previousItem();});
	$(".jp-shuffle").click(function(){
			shuffle();			
			$(".jp-shuffle-off")[0].style.display = "";
			$(".jp-shuffle")[0].style.display = "none";
		});	
	$(".jp-shuffle-off").click(function(){
		//undoShuffle();			
		$(".jp-shuffle-off")[0].style.display = "none";
		$(".jp-shuffle")[0].style.display = "";
	});
	$(".jp-repeat-off").click(function(){
			$(".jp-repeat-off")[0].style.display = "none";
			$(".jp-repeat")[0].style.display = "";
		});
	$(".jp-repeat").click(function(){
			$(".jp-repeat-off")[0].style.display = "";
			$(".jp-repeat")[0].style.display = "none";
		})
	$(".jp-mute").click(function(){
		if(ytplayer){
			volume = ytplayer.getVolume();
			ytplayer.mute();			
			$(".jp-unmute")[0].style.display = "";
			$(".jp-mute")[0].style.display = "none";
			$(".jp-volume-bar-value").css( "width","0%");
		}
	});
	$(".jp-unmute").click(function(){
		if(ytplayer){
			ytplayer.unMute();
			ytplayer.setVolume(volume);
			$(".jp-unmute")[0].style.display = "none";
			$(".jp-mute")[0].style.display = "";
			$(".jp-volume-bar-value").css( "width",volume + "%");
		}
	});
	$(".jp-volume-max").click(function(){
		if(ytplayer){
			ytplayer.setVolume(100);
			$(".jp-volume-bar-value").css( "width","100%");
		}
	});
	setup();
	findVids("Will.i.am");
					
	  $('.span2.sidebar.right .nano').nanoScroller({
	    preventPageScrolling: true
	  });
	  $('.span2.sidebar.right .nano').nanoScroller();
	  
	  $('#result.nano').nanoScroller({
	    preventPageScrolling: true
	  });
	  $('#result.nano').nanoScroller();	
	  
	  $('.span2.sidebar.left .nano').nanoScroller({
	    preventPageScrolling: true
	  });
	  $('.span2.sidebar.left .nano').nanoScroller();	  
});

function muteVideo() {
    if(ytplayer) {
      ytplayer.mute();
    }
  }
  
  function unMuteVideo() {
    if(ytplayer) {
      ytplayer.unMute();
    }
  }
  
function abortSubmit(e){
	//var target = event ? event.target : this;
    event.preventDefault();
    findVids();
    return false;
}