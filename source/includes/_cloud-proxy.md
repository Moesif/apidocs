# Using Cloud Proxy


## Getting Started
In our dash, go to menu -> settings. You can create production or dev “apps”. Once your app is created, you can enter a url to be encoded such as <https://api.yourcompany.com> and it will generate an encoded url like:

    `https://s91RHMP1s6fiM3o5vc854783N583tLI7.moesif.net`

Just replace your <https://api.company.com> base url with the statically mapped url
provided.

## Headers

```javascript
// Example client code calling your backend RESTful API through our proxy

var request = require('request');

var options = {

    method: 'GET',
    url: 'https://s91RHMP1s6fiM3o5vc854783N583tLI7.moesif.net/users/123',

    // replace your api base url with the encoded base url from Moesif
    headers: {
        // set the token for all API calls to identify your app with Moesif
        'X-Moesif-Application-Id': 'XXXXXXXXXXXXXXXX',

        // Session token used for authentication/authorization, could be a JWT, Device Identifier, etc
        'X-Moesif-Session-Token': 'XXXXXXXXXXXXXXXX',

        // The persistence user_id of the end user
        'X-Moesif-User-Id': 'XXXXXXXXXXXXXXXX',

        // Tag  API Call as getting a user profile if to /users
        'X-Moesif-Tags': url.contains('user') && method.contains('GET') ? 'user' : ''
    }
};

function callback(error, response, body) {
    // your code
}

request(options, callback);

```

```objective_c
// Example client code calling your backend RESTful API through our proxy

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
// Example client code calling your backend RESTful API through our proxy

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
// Example client code calling your backend RESTful API through our proxy

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

The only required header is the application_id which identifies
your app with Moesif.

We use variety of pattern recognition techniques, it can detect quite well. With additional headers, Moesif becomes more accurate.
We highly recommend tag at least one of your API end points as where your
app 'user' metadata is contained the response body such as `GET /users/me`

- `X-Moesif-Application-Id` **required**

  - value: my_application_id
  - This authenticates/authorizes your application with Moesif


- `X-Moesif-Tags` **strongly recommend**

  - value: *Comma Separated list of tags for the API Call*
    1. `user`
      - The `user` tag is a hint to what is considered the “user profile” for the signed in end user.
      - Add to a *single* method/endpoint template which you consider has the most user metadata.
      - For example, if you have an endpoint that gets the authenticated user via `GET /users/me`, add this header to those API Calls. The verb or url doesn't matter but the response body should have user's data.
      - You shouldn't add to more than one method/endpoint combination. i.e. Don't add it to both `GET /users` and `POST /users` unless both return the same JSON schema.


- `X-Moesif-Api-Version` **optional**

  - value: `X.X.X`
  - Not required, but you can tag this API with a version. Any string is fine
such as semantic versioning.


- `X-Moesif-User-Id` **optional**

  - value: *user_id string from your app*
  - We attempt to figure out what your end user's *user_id* is automatically, If Moesif has trouble,
    you can override it by setting it manually.


- `X-Moesif-Session-Token` **optional**

  - value: *your end user's session token*
  - Again, we automatically figure out what is your end user's session token, and fall back to IP Address
    if can't be found. You are free to override this if unhappy with
    the results. Session Token can be a short lived token.


- `X-Moesif-Request-Masks` **optional**

  - value: `key1,key2,key3`
  - This header is a comma separated list of keys in the **request** body that you want to be masked (i.e. hidden from our data pipeline and not persisted) such as for privacy reasons.
  - For each key, we'll recursively find all fields in the request body's JSON with that key, and mask it, so they won't be stored or analyzed in anyway.
  - For example, if the key is `password`, then if request body's JSON has `password` as a key for any of the fields or its sub-objects, it will be masked. Masking is done before any persistence including temporally persistent queues like Kafka.
  - To simplify your code, it is ok to add this header in all your API requests even if the key is absent, null value, or a GET request with no request body.


- `X-Moesif-Response-Masks` **optional**

  - value: `key1,key2,key3`
  - This header is a comma separated list of keys in the **response** body that you want to be masked (i.e. hidden from the analytics pipeline)
  - Similar to the `X-Moesif-Request-Masks` header, except this header is for the response body.
