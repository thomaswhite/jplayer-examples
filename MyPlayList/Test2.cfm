<!DOCTYPE html>
<html>
<head>

              
<style>
/** initial setup **/
.nano {
  position : relative;
  width    : 100%;
  height   : 100%;
  overflow : hidden;
}
.nano .content {
  position      : absolute;
  overflow      : scroll;
  overflow-x    : hidden;
  top           : 0;
  right         : 0;
  bottom        : 0;
  left          : 0;
}
.nano .content:focus {
  outline: thin dotted;
}
.nano .content::-webkit-scrollbar {
  visibility: hidden;
}
.has-scrollbar .content::-webkit-scrollbar {
  visibility: visible;
}
.nano > .pane {
  background : rgba(0,0,0,.25);
  position   : absolute;
  width      : 10px;
  right      : 0;
  top        : 0;
  bottom     : 0;
  visibility : hidden\9; /* Target only IE7 and IE8 with this hack */
  opacity    : .01; 
  -webkit-transition    : .2s;
  -moz-transition       : .2s;
  -o-transition         : .2s;
  transition            : .2s;
  -moz-border-radius    : 5px;
  -webkit-border-radius : 5px;  
  border-radius         : 5px;
}
.nano > .pane > .slider {
  background: rgba(0,0,0,.5);
  position              : relative;
  margin                : 0 1px;
  -moz-border-radius    : 3px;
  -webkit-border-radius : 3px;  
  border-radius         : 3px;
}
.nano:hover > .pane, .pane.active, .pane.flashed {
  visibility : visible\9; /* Target only IE7 and IE8 with this hack */
  opacity    : 0.99;
}

.nano .content { 
	padding: 20px;
}

.nano .pane {
	background: #555;
	width: 8px;
	right: 1px;
  margin: 5px;
}

.nano .slider {
	background: #111;
}
</style>

</head>
<body>


  
<div class="nano" style="height: 200px;margin: auto;width:200px;">
  
<div class="content"><p>
					<ul>
					<li><a href="https://github.com/livskiy">livskiy</a> #83</li>
					<li><a href="https://github.com/iStefo">iStefo</a> #65</li>
					<li><a href="https://github.com/tahajahangir">tahajahangir</a> #60</li>
					<li><a href="https://github.com/n0valyfe">n0valyfe</a> #57</li>
					<li><a href="https://github.com/johanbaath">johanbaath</a> #42</li>
					<li><a href="https://github.com/marcelombc">marcelombc</a> #40, #46</li>
					<li><a href="https://github.com/zacstewart">zacstewart</a> #30</li>
					<li><a href="https://github.com/michael-lefebvre">michael-lefebvre</a> #22, 

#29</li>
					<li><a href="https://github.com/AlicanC">AlicanC</a> #28</li>
					<li><a href="https://github.com/camerond">camerond</a> #26</li>
					<li><a href="https://github.com/jesstelford">jesstelford</a> #23</li>
					<li><a href="https://github.com/lluchs">lluchs</a> #7, #8</li>
					<li><a href="https://github.com/Dlom">Dlom</a></li>
					<li><a href="https://github.com/livskiy">livskiy</a> #83</li>
					<li><a href="https://github.com/iStefo">iStefo</a> #65</li>
					<li><a href="https://github.com/tahajahangir">tahajahangir</a> #60</li>
					<li><a href="https://github.com/n0valyfe">n0valyfe</a> #57</li>
					<li><a href="https://github.com/johanbaath">johanbaath</a> #42</li>
					<li><a href="https://github.com/marcelombc">marcelombc</a> #40, #46</li>
					<li><a href="https://github.com/zacstewart">zacstewart</a> #30</li>
					<li><a href="https://github.com/michael-lefebvre">michael-lefebvre</a> #22, 

#29</li>
					<li><a href="https://github.com/AlicanC">AlicanC</a> #28</li>
					<li><a href="https://github.com/camerond">camerond</a> #26</li>
					<li><a href="https://github.com/jesstelford">jesstelford</a> #23</li>
					<li><a href="https://github.com/lluchs">lluchs</a> #7, #8</li>
					<li><a href="https://github.com/Dlom">Dlom</a></li>
					</ul>
				</p>
</div>    
    
</div>
<script type="text/javascript" src="include/js/bootstrap.min.js"></script>
<script type="text/javascript" src="include/js/jquery.jplayer.js"></script>
<script type="text/javascript" src="include/js/jplayer.playlist.js"></script>		
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/swfobject/2.2/swfobject.js"></script>
<script type="text/javascript" src="include/js/youtube.js"></script>		
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8/jquery.min.js"></script>
<script type="text/javascript" src="include/js/jquery.nanoscroller.js"></script>
  

<script>
$(function(){

  $('.nano').nanoScroller({
    preventPageScrolling: true
  });
  $(".nano").nanoScroller();
});
</script>



</body>
</html>
