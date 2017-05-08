require File.dirname(__FILE__) + '/twix.rb'
require File.dirname(__FILE__) + '/tumblr_auth.rb'

#exit and do nothing most of the time
#allows us to call this VERY frequently from a cron job 
#and not post too often... so we look more human :)
exit if(rand > 0.05)

#get a pic
Twix.setup
pic = Twix.get_pic("awesome")

#print the text of the tweet & the url
#puts pic[:tweet].text
#puts pic[:url]

file_path = "./" + Time.now.to_i.to_s + ".jpg"

#download the image file (-s silent -L follow redirect)
`curl -Ls #{pic[:url]} > #{file_path}`

#post to tumblr
client = TumblrAuth::get_authenticated_client
client.photo("swasome.tumblr.com",{:data=>[file_path], :caption=>%Q{<a href="http://www.twitter.com/#{pic[:tweet].from_user}" target="_blank">#{pic[:tweet].from_user}<b></a>: #{pic[:tweet].text}}})

#delete our downloaded file
File.unlink(file_path)