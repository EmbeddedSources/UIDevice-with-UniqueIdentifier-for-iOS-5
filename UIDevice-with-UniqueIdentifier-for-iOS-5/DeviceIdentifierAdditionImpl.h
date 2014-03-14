#import <Foundation/Foundation.h>


@class UIDevice;


/**
 Providing interface that does not overlap with apple's methods to avoid linker and runtime errors.
 */
@interface DeviceIdentifierAdditionImpl : NSObject

/*
 * @method uniqueDeviceIdentifier
 * @description use this method when you need a unique identifier in one app.
 * It generates a hash from the MAC-address in combination with the bundle identifier
 * of your app.
 */

+ (NSString *)uniqueIdentifierForDevice:( UIDevice* )device;

/*
 * @method uniqueGlobalDeviceIdentifier
 * @description use this method when you need a unique global identifier to track a device
 * with multiple apps. as example a advertising network will use this method to track the device
 * from different apps.
 * It generates a hash from the MAC-address only.
 */

+ (NSString *)uniqueGlobalIdentifierForDevice:( UIDevice* )device;

@end
