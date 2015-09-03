

var express = require('express');

var YoutubeMp3Downloader = require('youtube-mp3-downloader');

//Configure YoutubeMp3Downloader with your settings
var YD = new YoutubeMp3Downloader({
	"ffmpegPath": "/usr/local/bin/ffmpeg",        //Where is the FFmpeg binary located?
	"outputPath": __dirname + "/data",    //Where should the downloaded and encoded files be stored?
	"youtubeVideoQuality": "highest",       //What video quality should be used?
	"parallelismFactor": 2                  //How many parallel downloads/encodes should be started?
});


var bodyParser = require('body-parser');

var app = express();

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use('/data', express.static(__dirname + '/data'));
app.use('/img', express.static(__dirname + '/img'));



app.set('view engine', 'ejs');

app.get('/', function (req, res) {

	res.render('index');

});

app.post('/submit', function (req, res) {
	var videoId = req.body.videoId;

	//Download video and save as MP3 file
	YD.download(videoId, function(result) {
		res.json(result);
	});
});



app.listen(3001);
console.info("listening on port: 3001");