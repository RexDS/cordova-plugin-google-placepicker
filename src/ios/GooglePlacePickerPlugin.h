#import <Cordova/CDV.h>

@interface GooglePlacePickerPlugin : CDVPlugin
{
    NSString* callbackId;
}

@property (copy) NSString* callbackId;

- (void)pickPlace:(CDVInvokedUrlCommand*)command;

@end
