This example Django app shows you how you can use Feedly to built a site similar to Pinterest.
Using Feedly you can built a wide variety of functionality.
For instance:

- A Facebook style (aggregated) newsfeed
- A twitter like newsfeed
- A notification system such as Fashiolista's
- A pinterest like activity feed

But in this example we're showing you how to built a feed with activity from people you follow.


###Deploy to Heroku###

This example app can be easily launched on Heroku, in addition to the standard setup procedure you need
to run the following commands to enable redis and to install compass:

``` bash
heroku config:add BUILDPACK_URL=https://github.com/ddollar/heroku-buildpack-multi.git
heroku addons:add redistogo
```