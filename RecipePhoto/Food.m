//
//  Food.m
//  RecipePhoto
//
//  Created by Pierre Binon on 2017-03-19.
//  Copyright © 2017 Angie Linton. All rights reserved.
//

#import "Food.h"



@implementation Food

- (instancetype)initWithDescription: (NSString *) description andImage: (UIImage *) image
{
    self = [super init];
    if (self) {
        _descriptionFood = description;
        _image = image;
    }
    return self;
}


- (instancetype)init
{
    return [self initWithDescription: @"" andImage: nil];
}


@end
