What are some common HTTP status codes?

* 401 (Unauthorized) occurs when a website visitor tries to access a restricted web page
	> Authentication is required for the page requested and current user does not have permission. 
	> invalid login 
* 400 (Bad Request) occurs when your web browser accessed something incorrectly
	> Error code that means that the server can't read the request do to a syntax error.

* 403 (Forbidden) occurs when no login opportunity to a website was available to begin with
	> same as 401, but there isn't a login option.  User will not be ahle to self-authenticate.

* 404 (Not Found) occurs when you try to access a resource on a web server that doesn't exist
	> Server cannot find the requested information, generally means that the informaiton being requested as moved
	> or no longer exists.

* 500 (Internal Server Error) occurs when a web server was unable to handle the requests properly
	> means server has been asked for something it can't handle, either currently (due to error) or ever.

What is the difference between a GET request and a POST request? When might each be used?
	> GET requests create more a data trail than POST requests, as they can be cached, kept in history, bookmarked. GET is also less safe than POST for this reason. POST should be used when dealing with private data since it is more secure and less easily hacked. 

* GET is used to retrieve remote data while POST is used to insert or update remote data. GET should never be used for operations that cause side-effects, meaning that it shouldn't be used when dealing with sensitive information.

What is a cookie? How does it relate to HTTP requests?
	> Cookies, both transient and persistent, are used to store user input data and accessed web content during on a site.  It's meant to ease continued access, hence speeding up the browsing process.  
	>> It relates to a https request by providing a file of the user's history to server. 
	
* A cookie is a small piece of data that is sent from a website and stored in the user's web browser while they are browsing. Cookies serve as a way for websites to remember related information that the user may have previously entered.