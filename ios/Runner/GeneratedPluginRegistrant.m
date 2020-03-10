//
//  Generated file. Do not edit.
//

#import "GeneratedPluginRegistrant.h"

#if __has_include(<liquid_swipe/LiquidSwipePlugin.h>)
#import <liquid_swipe/LiquidSwipePlugin.h>
#else
@import liquid_swipe;
#endif

#if __has_include(<url_launcher/UrlLauncherPlugin.h>)
#import <url_launcher/UrlLauncherPlugin.h>
#else
@import url_launcher;
#endif

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [LiquidSwipePlugin registerWithRegistrar:[registry registrarForPlugin:@"LiquidSwipePlugin"]];
  [FLTUrlLauncherPlugin registerWithRegistrar:[registry registrarForPlugin:@"FLTUrlLauncherPlugin"]];
}

@end
