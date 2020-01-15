mirror:
	httrack --mirror 2019.outdor.fr -O . "s3-eu-west-3.amazonaws.com/*" -N100 -I

rebuild: mirror
	find . -type f -name '*.html' -exec sed -i 's/index-2.html/index.html/g' {} \;
	mv index-2.html index.html
	rm index????.html
