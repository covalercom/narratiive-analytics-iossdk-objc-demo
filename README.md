# Sample App integrated with Narratiive SDK

This sample app shows how to integrate Narratiive App Traffic SDK into a new or existing Objective-C app.

## Running the sample App

To run the example project, clone the repo, and run `pod install` first.

## Add NarratiiveSDK to Your iOS App

NarratiiveSDK is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'NarratiiveSDK'
```

Save the Podfile and run:

```ruby
pod install
```

This creates an .xcworkspace file for your application. Use this file for all future development on your application.

## Update NarratiiveSDK

To update NarratiiveSDK to the latest version:

```ruby
pop update NarratiiveSDK
```

If you have problem updating to the latest version. Try `rm -rf Pods` and then `pod install`.

To check the latest version:

```ruby
pod search NarratiiveSDK
```

## Initialize NarratiiveSDK for your iOS App

Now that you have the configuration file for your project, you're ready to begin implementing. First, configure the shared Analytics object inside AppDelegate. This makes it possible for your app to send data to Analytics. 

To do so, import the NarratiiveSDK libruary and override the `didFinishLaunchingWithOptions` method to configure NarratiiveSDK:

  
**Objective C**:
    
    // AppDelegate.m
    
    #import "NarratiiveSDK-Swift.h"
    ...
    - (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
        // Override point for customization after application launch.
       
        NarratiiveSDK *sdk = [NarratiiveSDK sharedInstance];
        [sdk setupWithHost:@"YOUR_HOSTNAME" andHostKey:@"YOUR_HOSTKEY"];

        // Optional, show debug information in output
        // Remove before app release.
        sdk.debugMode = YES;

        // Optional, use of IDFA to identify user
        sdk.userIDFA = YES;
     
        return YES;
    }
    
    **Note**: You might need to create a bridging header in your Objective-C project for this Swift Pod.
 

## Add screen tracking

Here you’ll send a named screen view to NarratiiveSDK whenever the user opens or changes screens on your app. Open a View Controller that you'd like to track, or if this is a new application, open the default view controller. Your code should do the following:

 
**Objective C**:
    
    // FirstViewController.m
    #import "NarratiiveSDK-Swift.h"
    ...
    
    - (void) viewWillAppear:(BOOL)animated {
        NarratiiveSDK *sdk = [NarratiiveSDK sharedInstance];
        [sdk sendWithScreenName:@"/first-page"];
    }


**Note**: The `screenName` is used to identify the screen view. It should follows a URL path format and be in lowercases.

## About IDFA

Announced at WDDC (Worldwide Developers Conference) 2020, iOS 14 will begin requiring users to opt in for developers to access their devices’ advertising ID, or IDFA. 

In versions before NarratiiveSDK v0.2.0, the SDK collects the IDFA and use it for user identification by default.

Since NarratiiveSDK  v0.2.0, the SDK requires the use of IDFA be explicitly enabled by setting `useIDFA = YES`. Please refer to the above example for details.


## Author

git, engineering@narratiive.com

## License

This sample app is available under the MIT license. See the LICENSE file for more info.
