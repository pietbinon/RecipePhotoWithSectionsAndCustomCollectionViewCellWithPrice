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
             [[Food alloc] initWithDescription: @"hamburger" andImage: [UIImage imageNamed: @"hamburger.jpg"]],
             [[Food alloc] initWithDescription: @"risotto" andImage: [UIImage imageNamed: @"mushroom_risotto.jpg"]],
             [[Food alloc] initWithDescription: @"curry" andImage: [UIImage imageNamed: @"vegetable_curry.jpg"]]];
}


@end
