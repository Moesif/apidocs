---
title: Moesif API Reference

language_tabs:
  - javascript: Web (Javascript)
  - swift: iOS (Swift)
  - objective_c: iOS (Objective C)
  - java: Android (Java)

toc_footers:
  - <a href='/wrap'>Back to main dash</a>
  - <a href='/'>www.moesif.com</a>


search: true
---

# Introduction

Welcome to Moesif integration guide. Moesif is basically a proxy server 
that also collects metadata for analysis. The 5 min integration only 
requires set up a static map proxy for your APIs, and add a few headers. 
There is no libraries to install or update. 

We put in a lot of effort in making sure that the proxy itself doesn’t 
impact availability, i.e even if there are issues with the web portal, 
it should not negatively impact your service. The proxy itself is not dependent 
on any persistent storage. Even though it is a static proxy mapping, it is actually 
deployed to multiple data centers all over the world, in many cases, 
it should improve the performance of your app. 

# Create Proxy Mapping

On our site, go to settings. You can create prod or dev “apps”, once created, 
you can enter a url such as https://api.yourcompany.com and it will generate 
a static mapping like 

    `http(s)://CIBQGPAK7Y5MLRPZCEVIWA3OOUWQ.moesif.net`

Just replace your https://api.company.com with the statically mapped url
provided. 

# Headers

> Example code:

```javascript

var request = require('request');

var options = {
  url: 'https://CIBQGPAK7Y5MLRPZCEVIWA3OOUWQ.moesif.net/users/123',
  // replace your api base url with the encoded base url from Moesif 
  headers: {
    'X-Moesif-Application-Id': 'XXXXXXXXXXXXXXXX',
    // set the token for all API calls to identify your app with Moesif 
    'X-Moesif-Tags': 'user' 
    // only set above tag for key user API end point
  }
};

function callback(error, response, body) {
  // your code
}

request(options, callback);

```

```objective_c
NSURL *url = [NSURL URLWithString: @"https://CIBQGPAK7Y5MLRPZCEVIWA3OOUWQ.moesif.net/users/123"];
// replace your api base url with the encoded base url from Moesif. 

NSMutableURLRequest *request=[NSMutableURLRequest requestWithURL:url 
                               cachePolicy:NSURLRequestReloadIgnoringCacheData 
                               timeoutInterval:60];

[request setHTTPMethod:@"GET"];

[request setValue:@"XXXXXXXXXXXXXXXX" forHTTPHeaderField:@"X-Moesif-Application-Id"];
// do above for all API calls to identify yourself to Moseif.  

[request setValue:@"user" forHTTPHeaderField:@"X-Moesif-Tags"];
// only set the user tag for the key API endpoint for user data. 

```

```swift

let url: NSURL = NSURL(string: "https://CIBQGPAK7Y5MLRPZCEVIWA3OOUWQ.moesif.net/users/123")!
// replace your api base url with the encoded base url from Moesif. 
request = NSMutableURLRequest(URL:url)
request.HTTPMethod = "GET"

request.addValue("XXXXXXXXXXXXXXXX", forHTTPHeaderField: "X-Moesif-Application-Id")
// do above for all API calls to identify yourself to Moseif. 

request.addValue("user", forHTTPHeaderField: "X-Moesif-Tags")
// only set the user tag for the key API endpoint for user data. 

```


```java
BufferedWriter out = null;
try {
    out = new BufferedWriter(new FileWriter(”filename”, true));
    out.write(”aString”);
} catch (IOException e) {
    // error processing code
} finally {
    if (out != null) {
        out.close();
    }
}
```

The only required header is the token that generated for your app. 
You can find the token in settings for your app. Other headers primarily 
gives us hints on how to best parse and identify key data. Although, since
our system is quite smart, it can detect quite well without some of the hints.
As the concept of user is key to almost every app, we do highly recommend
tag at least one of the API end points as where 'user' metadata is returned.  

- `X-Moesif-Application-Id` **required**

  - value: your_token 
  - This is a signed JWT to identify your API with Moesif
  
- `X-Moesif-Tags` **strongly recommend**

  - value: `user` 
  - This is a hint to what is considered a “user”. 
  - Add to a single endpoint which you consider has the most user metadata. 
    For example if you have an endpoint that gets json for user by id: `GET /users/:id`, 
    then add this header to that API end point. The response body should have
    user's data. This helps us link the users object with in all other API calls. 
  - please add this tag for 'user' to only one API end point. 
 
    
- `X-Moesif-Api-Version` **optional** 

  - value: `v3.X.X`
  - You don’t need this, but you can take this API with a version, 
    and even use finer granularity or semantic versioning.
  
- `X-Moesif-User-Id` **optional**

  - value: id from your app 
  - We automatically figure out what your user id is from conventional 
    patterns, but you can override it by setting it manually. 
  
- `X-Moesif-Session-Token` **optional**
  
  - value: token from your app
  - Again, we parse conventional tokens such as “Authorization” or 
    “X-Auth-Token”, but you are free to override what is considered a 
    session token.  

<aside class="success">
That's it! It is that simple. 
</aside>

