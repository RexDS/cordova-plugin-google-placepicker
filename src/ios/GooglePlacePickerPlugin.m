#import "GooglePlacePickerPlugin.h"
@import GooglePlacePicker;


@implementation GooglePlacePickerPlugin


// // To receive the results from the place picker 'self' will need to conform to
// // GMSPlacePickerViewControllerDelegate and implement this code.
// - (void)placePicker:(GMSPlacePickerViewController *)viewController didPickPlace:(GMSPlace *)place {
//   // Dismiss the place picker, as it cannot dismiss itself.
//   [viewController dismissViewControllerAnimated:YES completion:nil];
// }

// - (void)placePickerDidCancel:(GMSPlacePickerViewController *)viewController {
//   [viewController dismissViewControllerAnimated:YES completion:nil];
// }

// - (void)pluginInitialize 
// {
//     NSLog(@"Starting Google PlacePicker Plugin");
// }

- (void)pickPlace:(CDVInvokedUrlCommand *)command 
{
    NSString* name = [command.arguments objectAtIndex:0];

    GMSPlacePickerConfig *config = [[GMSPlacePickerConfig alloc] initWithViewport:nil];
    GMSPlacePickerViewController *placePicker = [[GMSPlacePickerViewController alloc] initWithConfig:config];
    
    //placePicker.delegate = self;
    //[self.viewController presentViewController:placePicker animated:YES completion:nil];

    [placePicker pickPlaceWithCallback:^(GMSPlace *place, NSError *error)
    {
        NSMutableDictionary *placeData = [[NSMutableDictionary alloc] init];

        if (error != nil) 
            placeData[@"error"] = [error localizedDescription];

        if (place != nil) 
        {
            placeData[@"id"] = place.placeID;
            placeData[@"name"] = place.name;
            placeData[@"latitude"] = [NSNumber numberWithDouble:place.coordinate.latitude];
            placeData[@"longitude"] = [NSNumber numberWithDouble:place.coordinate.longitude];
            placeData[@"attributions"] = place.attributions.string;
        } 
        else 
            placeData[@"place"] = @"No place selected";

        CDVPluginResult *pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId messageAsDictionary:placeData];
    }];
}

@end
