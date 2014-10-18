//
//  Photographer+Create.m
//  Photomania
//
//  Created by Lan Nguyen on 10/18/14.
//  Copyright (c) 2014 Lan Nguyen. All rights reserved.
//

#import "Photographer+Create.h"

@implementation Photographer (Create)

+ (Photographer *)photographerWithName:(NSString *)name
                 inMangedObjectContext:(NSManagedObjectContext *)context
{
    Photographer *photographer = nil;
    
    if ([name length]) {
        NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"Photographer"];
        request.predicate = [NSPredicate predicateWithFormat:@"name = %@", name];
        
        NSError *error;
        NSArray *matches = [context executeFetchRequest:request error:&error];
        
        if (!matches || error || ([matches count] > 1)) {
            
        } else if (![matches count]) {
            photographer = [NSEntityDescription insertNewObjectForEntityForName:@"Photographer"
                                                         inManagedObjectContext:context];
            photographer.name = name;
        } else {
            photographer = [matches lastObject];
        }
    }
    
    return photographer;
}

@end
