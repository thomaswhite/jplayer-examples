
$(document).ready(function(){
  var $allPlayers=$(".basicPlayer");

  //Generating players
  $allPlayers.each(function( index ){
    var $player, playerID, containerID, sourceURL;
    $player = $(this);
    playerID = "#".concat($player.children(".jp-jplayer").attr("id"));
    containerID = "#".concat($player.children(".jp-audio").attr("id"));
    sourceURL = $player.attr('data-api-url');

    $(playerID).jPlayer({
      ready: function () {
        $(this).jPlayer("setMedia", {
          m4a: sourceURL
        });
      },
      swfPath: "../../dist/jplayer",
      supplied: "m4a",
      cssSelectorAncestor: containerID,
      wmode: "window",
      globalVolume: false,
      useStateClassSkin: true,
      autoBlur: false,
      smoothPlayBar: true,
      keyEnabled: true,
      ended: function(){
        var $playButton = $('.jp-button');
        $playButton.children().removeClass('fi-pause').addClass('fi-play');
      },
      play: function() {
        var $sib = $(this).siblings('.jp-audio');
        // console.log($sib);
        var excluding="#"+$sib.attr('id')+" * "+"i.my-play-button";
        var $others = $("i.my-play-button:not("+excluding+")");
        $others.removeClass('fi-pause').addClass('fi-play')
        $(this).jPlayer("pauseOthers"); // pause all players except this one.
      }
    });  
  });
});