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

includes: 
  - postingapi

search: true
---

# Introduction

Welcome to Moesif integration guide. Moesif proxies your API and processes the data.
The 5 min integration only requires changing your API Base URL and add a few headers.
There are no libraries or binaries to install or update.

<p>Moesif is built for high availability for production use.
moesif.net will route against our data centers located in West US, East US, and Northern Europe.
If you would like additional regions, just let us know.
Our proxy clusters are isolated from the rest of the data pipeline and rely only on static mapping
(i.e. no persistence storage)

# Create Proxy Mapping

In our dash, go to menu -> settings. You can create production or dev “apps”. Once your app is created,
you can enter a url to be encoded such as https://api.yourcompany.com and it will generate
an encoded url like:

    `https://s91RHMP1s6fiM3o5vc854783N583tLI7.moesif.net`

Just replace your https://api.company.com base url with the statically mapped url
provided. 

# Headers

> Example code:

```javascript
var request = require('request');

var options = {
  url: 'https://s91RHMP1s6fiM3o5vc854783N583tLI7.moesif.net/users/123',
  // replace your api base url with the encoded base url from Moesif 
  headers: {
    'X-Moesif-Application-Id': 'XXXXXXXXXXXXXXXX',
    // set the token for all API calls to identify your app with Moesif 
    'X-Moesif-Tags': 'me' 
    // only set above tag for key user API end point
  }
};

function callback(error, response, body) {
  // your code
}

request(options, callback);
```

```objective_c
NSURL *url = [NSURL URLWithString: @"https://s91RHMP1s6fiM3o5vc854783N583tLI7.moesif.net/users/123"];
// replace your api base url with the encoded base url from Moesif. 

NSMutableURLRequest *request=[NSMutableURLRequest requestWithURL:url 
                               cachePolicy:NSURLRequestReloadIgnoringCacheData 
                               timeoutInterval:60];

[request setHTTPMethod:@"GET"];

[request setValue:@"XXXXXXXXXXXXXXXX" forHTTPHeaderField:@"X-Moesif-Application-Id"];
// set the token for all API calls to identify your app to Moseif.  

[request setValue:@"user" forHTTPHeaderField:@"X-Moesif-Tags"];
// only set the user tag for the key API endpoint for user data. 
```

```swift
let url: NSURL = NSURL(string: "https://s91RHMP1s6fiM3o5vc854783N583tLI7.moesif.net/users/123")!
// replace your api base url with the encoded base url from Moesif. 

request = NSMutableURLRequest(URL:url)
request.HTTPMethod = "GET"

request.addValue("XXXXXXXXXXXXXXXX", forHTTPHeaderField: "X-Moesif-Application-Id")
// set the token for all API calls to identify your app to Moseif. 

request.addValue("user", forHTTPHeaderField: "X-Moesif-Tags")
// only set the user tag for the key API endpoint for user data. 
```

```java
    private Map<String, String> mHeaders = new HashMap<String, String>();
    
    private static final String sBaseUrl = "https://s91RHMP1s6fiM3o5vc854783N583tLI7.moesif.net";
    
    public void sendHttpRequest(String verb, String path) {
        mHeaders.put("X-Moesif-Api-Version", "1.0.1");
        mHeaders.put("X-Moesif-Application-Id", "XXXXXXXXXXXXXXXXX");
        // set the token for all API calls to identify your app to Moseif. 
        
        if (verb.equals("GET") && path.startsWith("/user")) {
            mHeaders.put("X-Moesif-Tags", "user");
            // only set the user tag for the key API endpoint for user data. 
        }
        String userId = getUserSession().getUserId();
        if (!Strings.isNullOrEmpty(userId)) {
            mHeaders.put("X-Moesif-User-Id", userId);
        }
        
        String url = sBaseUrl + path;
        
        // do HTTP request
    }
```

The only required header is the application id which identifies
your app with Moesif.
You can find the token in settings for your app after you logged into the dashboard.
Other headers primarily gives us hints on how to best parse and understand your data. 

We use variety of pattern recognition and
machine learning techniques, it can detect quite well. But with some hints,
it would speed up the learning dramatically. One of the key concept in any app is the user.
We do highly recommend tag at least one of your API end points as where your
app 'user' metadata is contained the response body. 

- `X-Moesif-Application-Id` **required**

  - value: your_token 
  - This is a signed JWT to identify your API with Moesif
  
- `X-Moesif-Tags` **strongly recommend**

  - value: `user` 
  - This is a hint to what is considered the “user profile” for the signed in end user. 
  - Add to a single endpoint which you consider has the most user metadata.
  - For example, if you have an endpoint that gets the authenticated user via `GET /users/me`.
  - Add this header to that API. The verb or url doesn't matter but the response body should have
    user's data. This helps us link the users object with other API calls. </li>
  - Please add this tag for only one API template. </li>
 
    
- `X-Moesif-Api-Version` **optional** 

  - value: `X.X.X`
  - Not required, but you can tag this API with a version. Any string is fine
such as semantic versioning.
  
- `X-Moesif-User-Id` **optional**

  - value: user_id string from your app 
  - We attempt to figure out what your user_id is automatically, If Moesif has trouble,
    you can override it by setting it manually.
  
- `X-Moesif-Session-Token` **optional**
  
  - value: token from your app
  - Again, we automatically figure out what is your session token, and fall back to IP Address 
    if can't be found. You are free to override this if unhappy with
    the results. Session Token can be temporal.

<aside class="success">
That's it! It's that simple. 
</aside>

