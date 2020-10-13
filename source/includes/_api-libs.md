# API Libs
THese are low-level libraries to access the Moesif Collector API directly. For logging API calls at scale, most 
customers should integrate with one of Moesif's <a href="https://www.moesif.com/implementation">API monitoring agents</a> which instrument your API automatically and handle batching. Likewise, Moesif has [client integrations](https://www.moesif.com/implementation/track-user-behaviors-with-browser?platform=browser) for tracking users and their actions in your UI.

## How to Install

```java
Pick a language at the top right
```

<blockquote class="lang-specific java">
<a href="https://bintray.com/moesif/maven/moesifapi/_latestVersion">
  <img src="https://api.bintray.com/packages/moesif/maven/moesifapi/images/download.svg">
</a>
<br><br>
Source Code:<br><br>
<a href="https://github.com/moesif/moesifapi-java">https://github.com/moesif/moesifapi-java</a>
</blockquote>

```java
// Add the dependency

<dependency>
	<groupId>com.moesif.api</groupId>
	<artifactId>moesifapi</artifactId>
	<version>1.6.9</version>
</dependency>
```
<blockquote class="lang-specific javascript--nodejs">
Source Code:<br><br>
<a href="https://github.com/moesif/moesifapi-nodejs">https://github.com/moesif/moesifapi-nodejs</a><br><br><br>
Package:<br><br>
<a href="https://www.npmjs.com/package/moesifapi">https://www.npmjs.com/package/moesifapi</a>
</blockquote>

```javascript--nodejs
// To Install Moesif Lib, run in your terminal

npm install --save moesifapi
```

<blockquote class="lang-specific python">
Source Code:<br><br>
<a href="https://github.com/moesif/moesifapi-python">https://github.com/moesif/moesifapi-python</a><br><br><br>
Package:<br><br>
<a href="https://pypi.python.org/pypi/moesifapi">https://pypi.python.org/pypi/moesifapi</a>
</blockquote>

```python
# To Install Moesif Lib, run in your terminal

pip install moesifapi
```

<blockquote class="lang-specific ruby">
Source Code:<br><br>
<a href="https://github.com/moesif/moesifapi-ruby">https://github.com/moesif/moesifapi-ruby</a></a><br><br><br>
Package:<br><br>
<a href="https://rubygems.org/gems/moesif_api">https://rubygems.org/gems/moesif_api</a>
</blockquote>

```ruby
# To Install Moesif Lib, run in your terminal

gem install moesif_api
```

<blockquote class="lang-specific csharp">
Source Code:<br><br>
<a href="https://github.com/moesif/moesifapi-csharp">https://github.com/moesif/moesifapi-csharp</a></a><br><br><br>
Package:<br><br>
<a href="https://www.nuget.org/packages/Moesif.Api/">https://www.nuget.org/packages/Moesif.Api/</a>
</blockquote>

```csharp
// Install the Nuget Package via Package Manager Console:

Install-Package Moesif.Api
```

<blockquote class="lang-specific go">
Source Code:<br><br>
<a href="https://github.com/Moesif/moesifapi-go">https://github.com/Moesif/moesifapi-go</a>
</blockquote>

```go

go get github.com/moesif/moesifapi-go;
```

<blockquote class="lang-specific php">
Source Code:<br><br>
<a href="https://github.com/Moesif/moesifapi-php">https://github.com/Moesif/moesifapi-php</a>
</blockquote>

```php
// Install via Composer

composer require moesif/moesifapi-php
```

<blockquote class="lang-specific javascript--browser">
Install via NPM:
</blockquote>

```javascript--browser
var moesif = require('moesif-browser-js');

moesif.init({
  applicationId: 'YOUR_COLLECTOR_APPLICATION_ID'
  // add other option here.
});
```

<blockquote class="lang-specific javascript--browser">
Install via CDN
</blockquote>

```javascript--browser
<script src="//unpkg.com/moesif-browser-js@^1/moesif.min.js"></script>
<script type="text/javascript">
moesif.init({
  applicationId: 'YOUR_COLLECTOR_APPLICATION_ID'
});
</script>
```

Select your language on the right:

* Shell
* Browser
* Node.js
* Python
* Ruby
* PHP
* Go
* C#
* Java

The SDKs are open-source and available on GitHub.

<aside class="notice">
You can find your Application Id by logging into Moesif 
and selecting API keys from top right menu.
</aside>