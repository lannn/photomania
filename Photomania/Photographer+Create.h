//
//  Photographer+Create.h
//  Photomania
//
//  Created by Lan Nguyen on 10/18/14.
//  Copyright (c) 2014 Lan Nguyen. All rights reserved.
//

#import "Photographer.h"

@interface Photographer (Create)

+ (Photographer *)photographerWithName:(NSString *)name
                 inMangedObjectContext:(NSManagedObjectContext *)context;

@end
