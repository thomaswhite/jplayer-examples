var findRemoveSync = require('find-remove');
var cron = require('cron');

// '00 30 11 * * 1-5' - Runs every weekday (Monday through Friday) at 11:30:00 AM.
// It does not run on Saturday or Sunday.
var cronJob = cron.job("00 30 11 * * 1-5", function(){
	// perform operation e.g. GET request http.get() etc.
	var result = findRemoveSync('../data', { extension: '.mp3'});
	//console.info('cron job completed');
});
cronJob.start();


