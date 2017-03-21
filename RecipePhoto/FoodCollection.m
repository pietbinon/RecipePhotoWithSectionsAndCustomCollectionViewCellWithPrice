//
//  FoodCollection.m
//  RecipePhoto
//
//  Created by Pierre Binon on 2017-03-19.
//  Copyright © 2017 Angie Linton. All rights reserved.
//

#import "FoodCollection.h"



@implementation FoodCollection

+ (NSArray *) returnArrayOfFoods {
    
//    return @[
//             [[Food alloc] initWithDescription: @"hamburger" andImage: [UIImage imageNamed: @"hamburger.jpg"]],
//             [[Food alloc] initWithDescription: @"risotto" andImage: [UIImage imageNamed: @"mushroom_risotto.jpg"]],
//             [[Food alloc] initWithDescription: @"curry" andImage: [UIImage imageNamed: @"vegetable_curry.jpg"]],
//             [[Food alloc] initWithDescription: @"angry_birds_cake" andImage: [UIImage imageNamed: @"angry_birds_cake.jpg"]];
//             [[Food alloc] initWithDescription: @"creme_brelee" andImage: [UIImage imageNamed: @"creme_brelee.jpg"]];
//             [[Food alloc] initWithDescription: @"starbucks_coffee" andImage: [UIImage imageNamed: @"starbucks_coffee.jpg"]]];

    
    Food *foodA = [[Food alloc] initWithDescription: @"hamburger" andImage: [UIImage imageNamed: @"hamburger.jpg"]];
    Food *foodB = [[Food alloc] initWithDescription: @"risotto" andImage: [UIImage imageNamed: @"mushroom_risotto.jpg"]];
    Food *foodC = [[Food alloc] initWithDescription: @"curry" andImage: [UIImage imageNamed: @"vegetable_curry.jpg"]];
    
    NSArray *mainDish = @[foodA, foodB, foodC];

    
    Food *foodD = [[Food alloc] initWithDescription: @"angry_birds_cake" andImage: [UIImage imageNamed: @"angry_birds_cake.jpg"]];
    Food *foodE = [[Food alloc] initWithDescription: @"creme_brelee" andImage: [UIImage imageNamed: @"creme_brelee.jpg"]];
    Food *foodF = [[Food alloc] initWithDescription: @"starbucks_coffee" andImage: [UIImage imageNamed: @"starbucks_coffee.jpg"]];
    
    NSArray *dessertDish = @[foodD, foodE, foodF];
    
    
    return [NSArray arrayWithObjects: mainDish, dessertDish, nil];
}

@end
