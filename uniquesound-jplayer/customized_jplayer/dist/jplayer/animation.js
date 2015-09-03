$(function() {
  var $volume= $('.my-volume-button');
  $volume.on('click', function() {
    if ($(this).hasClass('fi-volume-none'))
      $(this).removeClass('fi-volume-none').addClass('fi-volume');
    else
      $(this).removeClass('fi-volume').addClass('fi-volume-none');
  });

  var $play=$('.jp-button');
  $play.on('click', function() {
    var $itag = $(this).children();
    if ($itag.hasClass('fi-play'))
      $itag.removeClass('fi-play').addClass('fi-pause');
    else
      $itag.removeClass('fi-pause').addClass('fi-play');
    // event.preventDefault();
  });
});