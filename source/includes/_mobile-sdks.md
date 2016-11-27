# Using Mobile SDKs

Open-source SDKs for mobile devices Android. If you control both server and client side of your API, you can choose to integrate our mobile SDK to have a better end-to-end flow. The SDK will also capture API calls from 3rd party APIs such as Google or FB APIs.

## How to Install

Select your mobile language on the right:

* Java / Android
* Objective-C
* Swift

<blockquote class="lang-specific java">
<a href="https://jitpack.io/#Moesif/moesif-android">
  <img src="https://jitpack.io/v/Moesif/moesif-android.svg">
</a>
<br><br>
</blockquote>
```java
//Add the JitPack repository, if not present
repositories {
    ...
    maven { url "https://jitpack.io" }
}

dependencies {
    compile "com.moesif.moesif-android:moesif-android-okhttp3:1.0.0"
}

// If your Android project imports Volley as an unmanaged artifact, you may have to exclude volley as a transitive dependency: Otherwise, you may get duplicate class errors.
compile ("com.moesif.moesif-android:moesif-android-okhttp3:1.0.0") {
    exclude group: "com.android.volley"
}
```
```objective_c
Coming Soon, check out Android SDK
```
```swift
Coming Soon, check out Android SDK
```
### Authentication

Each SDK takes an application_id which authenticates your app with Moesif.
You can find your Application Id under *Menu -> App Setup Details*

## How to Use
```java
// In AndroidManifest.xml, add my_application_id under the "application" node

<application>
    ...

    <meta-data
        android:name="com.moesif.android.ApplicationId"
        android:value="my_application_id" />
</application>
```
```java
// In your Application's onCreate(), initialize the lib

import com.moesif.android.MoesifClient;

public final class MyApplicationClass extends Application {

    @Override
    public void onCreate() {
        MoesifClient.initialize(this);
    }
}
```
<aside class="info">
Replace <i>my_application_id</i> with your real Application Id
</aside>

## How to Configure
<blockquote class="lang-specific java">
Source Code:<br><br>
<a href="https://github.com/Moesif/moesif-android">https://github.com/Moesif/moesif-android</a>
</blockquote>
See respective README on GitHub repo for details
