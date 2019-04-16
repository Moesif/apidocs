---
title: Moesif API Documentation

language_tabs:
  - yaml: JSON
  - shell: Shell
  - javascript--nodejs: Javascript
  - python: Python
  - ruby: Ruby
  - php: PHP
  - go: Go
  - csharp: C#
  - java: Java

toc_footers:
  - <a href='/docs'>Back to Docs</a>
  - <a href='/wrap'>My Dashboard</a>
  - <a href='https://status.moesif.com'>API Status</a>

includes:
  - overview
  - errors
  - api-libs
  - collector-api/overview
  - collector-api/events-api
  - collector-api/users-api
  - collector-api/companies-api
  - management-api/management-api

search: true
---

# Moesif API Reference

*Debugging RESTful APIs Made Easier.*

This API reference centers around v1 of the Moesif REST APIs and API Client Libs for common languages.
For an overview on Moesif and higher level SDKs for common frameworks, please checkout the [Developer Docs](/docs)

This RESTful API is open for developers who want to build new extensions and clients. Apps can integrate with Moesif as long as it can send HTTP requests.

[![Moesif on Programmable Web](images/programmable-web.png)](http://www.programmableweb.com/api/moesif)

There are two distinct APIs:

|Name|Host|Authentication|
|----|----|--------------|
|[Collector API](#collector-api)|[api.moesif.net](https://api.moesif.net)|Retrieve your Collection Application Id from the Moesif portal under _Installation_ menu and place in the request `X-Moesif-Application-Id` header. [More info](#collector-api)|
|[Management API](#Management-API)|[api.moesif.com](https://api.moesif.com)|Generate a Management API token under in the Moesif portal under _Management API_ menu with the necessary _resource scopes_ . Add it as a [Bearer token](https://swagger.io/docs/specification/authentication/bearer-authentication/) to the request `Authorization` header. [More info](#Management-API)|

## Which should I use?

The _Collector API_ is a write-only API and used for high-volume data ingestion from middleware SDKs and agents
Think of it as a reverse CDN and used only for importing data into Moesif.

The _Management API_ is for operations on the data stored already in Moesif. You can use it to query data for custom reports,
build custom dashboards, integrate with other apps like bug tracking tools, etc.
