//
//  Photo+Flickr.h
//  Photomania
//
//  Created by Lan Nguyen on 10/18/14.
//  Copyright (c) 2014 Lan Nguyen. All rights reserved.
//

#import "Photo.h"

@interface Photo (Flickr)

+ (Photo *)photoWithFlickrInfo:(NSDictionary *)photoDictionary
        inManagedObjectContext:(NSManagedObjectContext *)context;

+ (void)loadPhotosFromFlickrArray:(NSArray *)photos
          intoManagedObjectContext:(NSManagedObjectContext *)context;

@end
