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
// With javascript, you can do this. 

function registerMoesif() {
  const it = 'blahlbah';
  console.log('blahb lahb lah');
}
```

```objective_c
#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
        NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
        NSLog (@"Hello, World!");
        [pool drain];
        return 0;
}
```

```swift
class Counter {
    var count = 0
    func increment() {
        count += 1
    }
    func incrementBy(amount: Int) {
        count += amount
    }
    func reset() {
        count = 0
    }
}
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

- `X-Moesif-Application-Id` **required**

  - value: your_token 
  - This is a signed JWT to identify your API with Moesif
  
- `X-Moesif-Tags` **strongly recommend**

  - value: `user` 
  - This is a hint to what is considered a “user”. 
    Add to a single endpoint which you consider has the most user metadata.
    
- `X-Moesif-Api-Version` **optional** 

  - value: `v3.X.X`
  - You don’t need this, but you can take this API with a version, and even use finer granularity or semantic versioning.
  
- `X-Moesif-User-Id` **optional**

  - value: id from your app 
  - We automatically figure out what your user id is from conventional patterns, but you can override it by setting it manually. From looking at hornet API, Moesif will choose the device identifier automatically.
  
- `X-Moesif-Session-Token` **optional**
  
  - value: token from your app
  - Again, we parse conventional tokens such as “Authorization” or “X-Auth-Token”, but you are free to override what is considered a session token.
  

<aside class="success">
That's it! 
</aside>

