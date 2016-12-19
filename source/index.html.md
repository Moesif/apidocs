---
title: Moesif API Reference

language_tabs:
  - javascript: Javascript
  - python: Python
  - ruby: Ruby
  - php: PHP
  - go: Go
  - csharp: C#
  - java: Java / Android
  - objective_c: Objective-C
  - swift: Swift

toc_footers:
  - <a href='/wrap'>Back to my dashboard</a>
  - <a href='/'>www.moesif.com</a>

includes:
  - server-sdks
  - mobile-sdks
  - api-libs
  - cloud-proxy
  - restful-api

search: true
---

# Introduction
*Debugging RESTful APIs Made Easier.*

### Why Moesif?
We find support teams bogged down with integration problems and developer questions the most. These API related issues are the most difficult for teams to identify and resolve causing time lost and unhappy customers.

Time is wasted finding the needle in the haystack of API logs, which is now terabytes a day. Another time sinker is trying to reproduce the bug with the correct context. Finally, a lot of time to spend to trying root cause it. Often errors are seen way downstream from where the root cause of the error is. Even a completely difference service/API.

### What is Moesif?
Moesif monitors your RESTful API calls with our open-source libs. Your API log data is analyzed by our managed service to give you deep insights into why errors happen.
Moesif attributes API calls to each customer account, so your support team can see the customer's API history with no manual log search and even replay the API Calls.

### Who is Moesif for?
Moesif is designed for high-bandwidth RESTful API providers, whether sold directly or through partner integrations. However, Moesif is also useful for any API driven service, whether internal or external.

# Installation Options
We have five options for installation, although most users will use the __server middleware__.

Option | Integration Effort | Definition | Use Case
---------- | ------- | ---------- | ----------
[Server Middleware SDKs](#using-server-sdks) | Easy: Few lines of code | Open-source middleware for common frameworks like Express and Django. The middleware monitors your RESTful API and sends the even data to api.moesif.net. | You have your own service powered by an API that other developers depend on. __Most common integration__.
[Mobile SDKs](#using-mobile-sdks) | Easy: Few lines of code | Open-source SDKs for mobile devices Android. If you control both server and client side of your API, you can choose to integrate our mobile SDK to have a better end-to-end flow. The SDK will also capture API calls from 3rd party APIs such as Google or FB APIs. | You are an app developer and consume someone else's APIs which need to be monitored.
[API Libs](#using-api-libs)  | Medium: Some object mapping required | These open-source libs are the building blocks for the server middleware and Mobile SDKs. We recommend using the [server middleware SDKs](#using-server-sdks) or [mobile SDKs](#using-mobile-sdks) if available. These libs can be used similarly to other analytics event libs with a `sendEvent()` call which sends event data to api.moesif.net. Our libraries support async operations and queue HTTP calls on background threads. | Server middleware or mobile SDKs not available for your environment or not suitable.
[Cloud Proxy](#using-cloud-proxy) | Easy: No software required | This integration only requires changing your API Base URL and add a few headers. There are no libraries to install. Your API Calls will be routes to the closest datacenter (We currently run in West US, East US, and Northern Europe). If you would like additional regions, just let us know. | You don't want add any libraries or SDKs or need to debugging a service that you don't control (i.e. you want to debug/monitor a Stripe integration).
[RESTful API](#using-restful-api) | Hard | We have an open API at api.moesif.net. While the SDKs are recommended, you can build applications directly on our API. | You are building a 3rd party plugin or extension on top of Moesif's API. __Not Common__
