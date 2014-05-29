//
//  Destination.h
//  Trext
//
//  Created by April Chien on 5/2/14.
//

#import <Foundation/Foundation.h>

@interface Destination : NSObject

@property NSString *itemName;
@property BOOL completed;
@property (readonly) NSDate *creationDate;

@end