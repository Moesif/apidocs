---
title: Moesif API Documentation

language_tabs:
  - yaml: JSON
  - shell: Shell
  - javascript--nodejs: Node.js
  - python: Python
  - ruby: Ruby
  - php: PHP
  - go: Go
  - csharp: C#
  - java: Java
  - javascript--browser: Browser

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

*User-Centric API Analytics*

This API reference centers around v1 of the Moesif REST APIs and API Client Libs.
For an overview on the Moesif platform and integration, checkout the [Developer Documentation](/docs)

There are two distinct APIs:

|Name|Host|Authentication|
|----|----|--------------|
|[Collector API](#collector-api)|[api.moesif.net](https://api.moesif.net)|Retrieve your Collector Application Id by logging into Moesif and going to _API keys_ from top right menu. Place in the request `X-Moesif-Application-Id` header. [More info](#collector-api)|
|[Management API](#Management-API)|[api.moesif.com](https://api.moesif.com)|Generate a Management API key by logging into Moesif and going to _API keys_ from top right menu. Add it as a [Bearer token](https://swagger.io/docs/specification/authentication/bearer-authentication/) to the request `Authorization` header. [More info](#Management-API)|

## API definitions

The _Collector API_ is a write-only API for high-volume data ingestion from the Moesif SDKs and API libs. When storing raw data into Moesif like API event data, updating users and companies, use the collector API. 

The _Management API_ is for advanced used cases to directly query data residing in Moesif. You can use this API to develop custom dashboards and reports.

