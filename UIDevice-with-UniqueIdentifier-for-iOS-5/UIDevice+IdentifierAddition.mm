//
//  UIDevice(Identifier).m
//  UIDeviceAddition
//
//  Created by Georg Kitz on 20.08.11.
//  Copyright 2011 Aurora Apps. All rights reserved.
//

#import "UIDevice+IdentifierAddition.h"
#import "DeviceIdentifierAdditionImpl.h"


@implementation UIDevice (IdentifierAddition)

////////////////////////////////////////////////////////////////////////////////
#pragma mark -
#pragma mark Public Methods

- (NSString *) uniqueDeviceIdentifier{
    return [DeviceIdentifierAdditionImpl uniqueIdentifierForDevice: self];
}

- (NSString *) uniqueGlobalDeviceIdentifier{
    return [DeviceIdentifierAdditionImpl uniqueGlobalIdentifierForDevice: self];
}

@end
