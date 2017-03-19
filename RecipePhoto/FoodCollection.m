//
//  FoodCollection.m
//  RecipePhoto
//
//  Created by Pierre Binon on 2017-03-19.
//  Copyright © 2017 Angie Linton. All rights reserved.
//

#import "FoodCollection.h"



@implementation FoodCollection

+ (NSArray *) returnArrayOfFoods
{
    return @[
             [[Food alloc] initWithDescription: @"hamburger" andImageName: @"hamburger"],
             [[Food alloc] initWithDescription: @"risotto" andImageName: @"mushroom_risotto"],
             [[Food alloc] initWithDescription: @"curry" andImageName: @"vegetable_curry"]
             ];
}


@end
