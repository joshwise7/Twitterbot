var TwitterPackage = require('twitter');

var secret = require('.secret');
var Twitter = new TwitterPackage(secret);

/*
Twitter.post('statuses/update', {status: 'I Love Tech Knights!'},  function(error, tweet, response){
  if(error){
    console.log(error);
  }
  console.log(tweet);  // Tweet body.
  console.log(response);  // Raw response object.
});
*/

Twitter.stream('statuses/filter', {track: '#Opener'}, function(stream) {
  stream.on('data', function(tweet) {
	var mentionString = "@" + tweet.user.screen_name;
    console.log(Twitter.post('statuses/update', {status: mentionString 'Opener? IBARELYKNOWHER'},  function(error, tweet, response){
  if(error){
    console.log(error);
  }
  console.log(tweet);  // Tweet body.
  console.log(response);  // Raw response object.
  });

  stream.on('error', function(error) {
    console.log(error);
  });
});


Twitter.post(')
