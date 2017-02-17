# API Libs

These open-source libs are advanced wrappers for the Moesif REST API and are the building blocks for the higher level server and mobile SDKs.  These libs can be used similarly to other analytics event libs with a `sendEvent()` call which sends event data to api.moesif.net. These libraries support both sync and async operations.

## Important
<aside class="warning">
Use the Moesif SDKs for the easiest integration if available, they are all open-source and available on Github. Checkout Moesif's <a href="/docs">Developer Docs</a> for more info.
</aside>


## How to Install

```jsom
Pick a language at the top
```

<blockquote class="lang-specific java">
<a href="https://jitpack.io/#Moesif/moesifapi-java">
  <img src="https://jitpack.io/v/Moesif/moesifapi-java.svg">
</a>
<br><br>
Source Code:<br><br>
<a href="https://github.com/moesif/moesifapi-java">https://github.com/moesif/moesifapi-java</a>
</blockquote>

```java
// Step 1. Add the JitPack repository to your build file such as pom.xml
<repositories>
  <repository>
      <id>jitpack.io</id>
      <url>https://jitpack.io</url>
  </repository>
</repositories>


// Step 2. Add the dependency
<dependency>
    <groupId>com.moesif</groupId>
    <artifactId>moesifapi-java</artifactId>
    <version>1.0.2</version>
</dependency>

```
<blockquote class="lang-specific javascript">
Source Code:<br><br>
<a href="https://github.com/moesif/moesifapi-nodejs">https://github.com/moesif/moesifapi-nodejs</a><br><br><br>
Package:<br><br>
<a href="https://www.npmjs.com/package/moesifapi">https://www.npmjs.com/package/moesifapi</a>
</blockquote>

```javascript
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

composer require moesif/moesifapi
```

Select your language on the right:

* Javascript
* Python
* Ruby
* PHP
* Go
* C#
* Java

The SDKs are open-source and available on GitHub.

<aside class="notice">
You can find your Application Id under <i>Menu -> App Setup Details</i>
</aside>
