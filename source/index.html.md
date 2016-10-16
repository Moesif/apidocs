---
title: Moesif API Reference

language_tabs:
  - java: Java & Android
  - javascript: Javascript
  - python: Python
  - ruby: Ruby
  - objective_c: iOS (Objective-C)
  - swift: iOS (Swift)
  - csharp: C#

toc_footers:
  - <a href='/wrap'>Back to my dashboard</a>
  - <a href='/'>www.moesif.com</a>

includes:
  - proxy
  - sdk
  - restfulapi

search: true
---

# Introduction
*Debugging is hard. It's even harder in a microservice world. We make it easier.*

### Why Moesif?
Imagine you, as a software developer, receive a support ticket. An end-user complaining your search does not return any results.
All you have is the name & email of the end-user.
You have to find the session token for that email, lookup the user profile in your Db, start looking at the logs for the search service. You filter enough hoping you aren't looking at a firehose of log data.
What if the root cause wasn’t even in the search service?

In fact, the error may be way upstream in some other services. Can you root cause and reproduce directly from logs? Usually context is missing. It can takes hours or days to get to a direct root cause just from logs alone.

### What is Moesif?
Moesif captures every RESTful API Call such as between your iOS/Android apps and your backend or from IoT Devices to backends or other devices. Moesif can also capture outbound API Calls from your backend such as to Stripe or Algolia or internal API Calls to deeper microservices in your backend. We can then recreate full session traces and understand API behavior so you can root cause in 5 minutes.


# Installation Options
We have three options for installation:

1. **Ingest using Cloud Proxy**

   Moesif proxies your API and processes the data. The 5 min integration only requires changing your API Base URL and add a few headers. There are no libraries to install.
   Your API Calls will be routes to the closest datacenter (We currently run in West US, East US, and Northern Europe). If you would like additional regions, just let us know.
   Our proxy clusters are isolated from the rest of the data pipeline and rely only on static mappings (i.e. no persistence storage)

2. **Ingest using SDKs for common frontend/backend languages**

   You you prefer the flexibility of a library. We have those also. If you ever used an events-based analytics library with a `sendEvent()` method, you'll feel right at home. Most MVC frameworks and frontends are created with middleware to handle API Calls in a single location, so you probably only need a single `sendEvent()` unlike analytics libs. Our libraries support async operations and queue HTTP calls on background threads.

3. **Ingest using RESTful API**

  While libs are preferred, our API is open if there is a 3rd party integration you would like to integrate with.
