# Sentiment-Analysis
Sentiment Analysis Using Tweets, 2015-04-26
This READ ME file contains important information about sentiment analysis using tweets.To know the in depth knowledge of this application ,read this file in its entirety.
In sentiment analysis using tweets we analyse the tweets posted on twitter regarding a product and give rating for the same.This is achieved through a java based website described in:
The system requires Java 1.5+ to be installed. About 79.7 MB of memory is required to run the website depending on the OS. We need to login to twitter to extract tweets for this  two twitter 4j jar files were imported.For analysis we have even used Standford POS Tagger.   
QUICKSTART
-----------------------------------------------

There is a website, which demonstrates the extraction and analysis of tweets from twitter. To run the website you should be able to use netbeans with glassfish server and jdbc jar file.
The Internet connection is also required to open the twitter account.

CONTENTS
-----------------------------------------------
README.txt

  This file.

HARDWARE INTERFACE
------------------------
		*About 79.7 MB of memory
		*80.5 MB disk space
		*processor atleast Intel pentium
		*Any Browser compatible with IE 5.0 or onwards.
		*Any operating system
		
CONSTRAINTS
------------------------
		*Discrepancy on Intensity values.
		*Analysis is difficult on the tweets like "The Novel is good until I saw the movie".
	
FEATURES
-------------------------
		*Project contains a website in which user makes the account and is able to see all the novels and their respective ratings.
		*Stanford POS Tagger is also used to tag the words and the tag JJ for adjectives is being stored in an ArrayList.
		*The jar files of twitter 4j is also used in order to extract the tweets from twitter.
		*To access tweets from twitter, consumer key, consumer secret key,Access Token and Access Token Secret key is required.
		*The main page also has features like ABOUT US, HELP, HOME.
		
INSTALLATION
--------------------------
INSTALLATION PROCEDURE

1. Firstly we need to check whether Netbeans IDE is intalled on PC or not.If not then first install it and then run the project.
2. Make a project as web application and copy the source folder and web folder in it.
3. You are ready to run our project.
4. To run the project open the IE and then in the address bar type the address as http://localhost:8080/profinal/
5. In our project there is a central home page that provides general user to access the website for the user to give input.
