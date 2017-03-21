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
//             [[Food alloc] initWithDescription: @"Hamburger" andImage: [UIImage imageNamed: @"hamburger.jpg"]],
//             [[Food alloc] initWithDescription: @"Risotto" andImage: [UIImage imageNamed: @"mushroom_risotto.jpg"]],
//             [[Food alloc] initWithDescription: @"Curry" andImage: [UIImage imageNamed: @"vegetable_curry.jpg"]],
//             [[Food alloc] initWithDescription: @"Angry Birds Cake" andImage: [UIImage imageNamed: @"angry_birds_cake.jpg"]],
//             [[Food alloc] initWithDescription: @"Creme Brulee" andImage: [UIImage imageNamed: @"creme_brelee.jpg"]],
//             [[Food alloc] initWithDescription: @"Starbucks Coffee" andImage: [UIImage imageNamed: @"starbucks_coffee.jpg"]],
//             [[Food alloc] initWithDescription: @"Eggs Benedicte" andImage: [UIImage imageNamed: @"egg_benedict.jpg"]],
//             [[Food alloc] initWithDescription: @"Full Breakfast" andImage: [UIImage imageNamed: @"full_breakfast.jpg"]],
//             [[Food alloc] initWithDescription: @"Green Tea" andImage: [UIImage imageNamed: @"green_tea.jpg"]],
//             [[Food alloc] initWithDescription: @"Ham & Cheese Panini" andImage: [UIImage imageNamed: @"ham_and_cheese_panini.jpg"]],
//             [[Food alloc] initWithDescription: @"Ham & Cheese Sandwich" andImage: [UIImage imageNamed: @"ham_and_egg_sandwich.jpg"]],
//             [[Food alloc] initWithDescription: @"Instant Noodle With Egg" andImage: [UIImage imageNamed: @"instant_noodle_with_egg.jpg"]],
//             [[Food alloc] initWithDescription: @"Japanese Noodle With Pork" andImage: [UIImage imageNamed: @"japanese_noodle_with_pork.jpg"]],
//             [[Food alloc] initWithDescription: @"Noodle with Barbecue Pork" andImage: [UIImage imageNamed: @"noodle_with_bbq_pork.jpg"]],
//             [[Food alloc] initWithDescription: @"Thai Shrimo Cake" andImage: [UIImage imageNamed: @"thai_shrimp_cake.jpg"]],
//             [[Food alloc] initWithDescription: @"White Chocolate Donut" andImage: [UIImage imageNamed: @"white_chocolate_donut.jpg"]]];




    
    Food *foodA = [[Food alloc] initWithDescription: @"Hamburger" andImage: [UIImage imageNamed: @"hamburger.jpg"]];
    Food *foodB = [[Food alloc] initWithDescription: @"Risotto" andImage: [UIImage imageNamed: @"mushroom_risotto.jpg"]];
    Food *foodC = [[Food alloc] initWithDescription: @"Curry" andImage: [UIImage imageNamed: @"vegetable_curry.jpg"]];
    Food *foodD = [[Food alloc] initWithDescription: @"Eggs Benedicte" andImage: [UIImage imageNamed: @"egg_benedict.jpg"]];
    Food *foodE = [[Food alloc] initWithDescription: @"Full Breakfast" andImage: [UIImage imageNamed: @"full_breakfast.jpg"]];
    Food *foodF = [[Food alloc] initWithDescription: @"Ham & Cheese Panini" andImage: [UIImage imageNamed: @"ham_and_cheese_panini.jpg"]];
    Food *foodG = [[Food alloc] initWithDescription: @"Ham & Cheese Sandwich" andImage: [UIImage imageNamed: @"ham_and_egg_sandwich.jpg"]];
    Food *foodH = [[Food alloc] initWithDescription: @"Instant Noodle With Egg" andImage: [UIImage imageNamed: @"instant_noodle_with_egg.jpg"]];
    Food *foodI = [[Food alloc] initWithDescription: @"Japanese Noodle With Pork" andImage: [UIImage imageNamed: @"japanese_noodle_with_pork.jpg"]];
    Food *foodJ = [[Food alloc] initWithDescription: @"Noodle with Barbecue Pork" andImage: [UIImage imageNamed: @"noodle_with_bbq_pork.jpg"]];
    
    NSArray *mainDish = @[foodA, foodB, foodC, foodD, foodE, foodF, foodG, foodH, foodI, foodJ];

    
    Food *foodK = [[Food alloc] initWithDescription: @"Angry Birds Cake" andImage: [UIImage imageNamed: @"angry_birds_cake.jpg"]];
    Food *foodL = [[Food alloc] initWithDescription: @"Creme Brulee" andImage: [UIImage imageNamed: @"creme_brelee.jpg"]];
    Food *foodM = [[Food alloc] initWithDescription: @"Starbucks Coffee" andImage: [UIImage imageNamed: @"starbucks_coffee.jpg"]];
    Food *foodN = [[Food alloc] initWithDescription: @"Green Tea" andImage: [UIImage imageNamed: @"green_tea.jpg"]];
    Food *foodO = [[Food alloc] initWithDescription: @"Thai Shrimo Cake" andImage: [UIImage imageNamed: @"thai_shrimp_cake.jpg"]];
    Food *foodP = [[Food alloc] initWithDescription: @"White Chocolate Donut" andImage: [UIImage imageNamed: @"white_chocolate_donut.jpg"]];


    
    NSArray *dessertDish = @[foodK, foodL, foodM, foodN, foodO, foodP];
    
    
    return [NSArray arrayWithObjects: mainDish, dessertDish, nil];
}

@end
