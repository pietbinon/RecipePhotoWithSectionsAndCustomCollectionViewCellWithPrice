//
//  Food.m
//  RecipePhoto
//
//  Created by Pierre Binon on 2017-03-19.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import "Food.h"



@implementation Food

- (instancetype)initWithDescription: (NSString *) description price: (NSString *) price andImage: (UIImage *) image
{
    self = [super init];
    if (self) {
        _descriptionFood = description;
        _image = image;
        _priceLabel = price;
    }
    return self;
}


- (instancetype)init
{
    return [self initWithDescription: @"" price: @"" andImage: nil];
}

@end
