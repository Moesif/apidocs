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
  - errors

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

# headers

Header | Example | Optional | Description
------ | ------- | -------- | -----------
`X-Moesif-Application-Id` | your_token  | Required | This is a signed JWT to identify your API with Moesif
`X-Moesif-Tags` | user 	| Strongly Recommend | This is a hint to what is considered a “user”. Add to a single endpoint which you consider has the most user metadata.)
`X-Moesif-Api-Version` | `v3.X.X` | Optional | You don’t need this, but you can take this API with a version, and even use finer granularity or semantic versioning.
`X-Moesif-User-Id` | id from your app | Optional | We automatically figure out what your user id is from conventional patterns, but you can override it by setting it manually. From looking at hornet API, Moesif will choose the device identifier automatically.
`X-Moesif-Session-Token` | token from your app	| Optional | Again, we parse conventional tokens such as “Authorization” or “X-Auth-Token”, but you are free to override what is considered a session token.


# Authentication

> To authorize, use this code:

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

> Make sure to replace `meowmeowmeow` with your API key.

Kittn uses API keys to allow access to the API. You can register a new Kittn API key at our [developer portal](http://example.com/developers).

Kittn expects for the API key to be included in all API requests to the server in a header that looks like the following:

`Authorization: meowmeowmeow`

<aside class="notice">
You must replace <code>meowmeowmeow</code> with your personal API key.
</aside>

# Kittens

## Get All Kittens

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
> The above command returns JSON structured like this:

```json
[
  {
    "id": 1,
    "name": "Fluffums",
    "breed": "calico",
    "fluffiness": 6,
    "cuteness": 7
  },
  {
    "id": 2,
    "name": "Max",
    "breed": "unknown",
    "fluffiness": 5,
    "cuteness": 10
  }
]
```

This endpoint retrieves all kittens.

### HTTP Request

`GET http://example.com/api/kittens`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
include_cats | false | If set to true, the result will also include cats.
available | true | If set to false, the result will include kittens that have already been adopted.

<aside class="success">
Remember — a happy kitten is an authenticated kitten!
</aside>

## Get a Specific Kitten
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

> The above command returns JSON structured like this:

```json
{
  "id": 2,
  "name": "Max",
  "breed": "unknown",
  "fluffiness": 5,
  "cuteness": 10
}
```

This endpoint retrieves a specific kitten.

<aside class="warning">Inside HTML code blocks like this one, you can't use Markdown, so use <code>&lt;code&gt;</code> blocks to denote code.</aside>

### HTTP Request

`GET http://example.com/kittens/<ID>`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the kitten to retrieve

