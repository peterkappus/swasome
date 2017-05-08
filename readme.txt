

Concept:
Find images on Twitter which use the word "Awesome". Repost them to Tumblr here: http://swasome.tumblr.com (managed under the peterkappus.tumblr.com account)


INSTALLATION:
	- Go to http://developers.tumblr.com
	- Get your consumer key and secret
	- Add these to your *config.yaml* file
	- From the command line (locally) run 'tumblr_auth.rb'
	- Follow the directions
	- Check the 'deploy.rb' script and run it if it's correct
	- Run Bundle Install (I think?)
	- Set up a cron job to run it every 3-5 hours
	- Enjoy cluttering the internet!

DEPLOYMENT
- `rsync -avz --exclude=.git . name@domain:/path/to/files`


NOTE: for security, yaml files won't be committed to github... but you can store the values here: https://gist.github.com


TROUBLESHOOTING
	
NOTE: There seems to be a conflict between the versions of Faraday required by the twitter & tumblr gems...
To get around this try:
	%> bundle exec ruby app.rb
	
	

	
