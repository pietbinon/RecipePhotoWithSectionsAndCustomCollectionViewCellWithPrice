//
//  RecipeCollectionViewController.m
//  RecipePhoto
//
//  Created by Angie Linton on 2017-01-29.
//  Copyright © 2017 Angie Linton. All rights reserved.
//

#import "RecipeCollectionViewController.h"
#import "DetailViewController.h"
#import "Food.h"
#import "FoodCollection.h"


@class DetailViewController;



@interface RecipeCollectionViewController ()
//    NSArray *recipeImages;
    @property (nonatomic) NSArray <Food *> *foods;


@end



@implementation RecipeCollectionViewController

//static NSString * const reuseIdentifier = @"Cell";


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.foods = [FoodCollection returnArrayOfFoods];
    
//    self.foods = [NSArray arrayWithObjects:@"angry_birds_cake.jpg", @"creme_brelee.jpg", @"egg_benedict.jpg", @"full_breakfast.jpg", @"green_tea.jpg", @"ham_and_cheese_panini.jpg", @"ham_and_egg_sandwich.jpg", @"hamburger.jpg", @"instant_noodle_with_egg.jpg", @"japanese_noodle_with_pork.jpg", @"mushroom_risotto.jpg", @"noodle_with_bbq_pork.jpg", @"starbucks_coffee.jpg", @"thai_shrimp_cake.jpg", @"vegetable_curry.jpg", @"white_chocolate_donut.jpg", nil];
   }



 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
     if ([segue.identifier isEqualToString:@"showRecipePhoto"]) {
         NSArray *indexPaths = [self.collectionView indexPathsForSelectedItems];
         
         // Get the new view controller using [segue destinationViewController].
         
         
         
         DetailViewController *detailViewController = segue.destinationViewController;
         NSIndexPath *indexPath = [indexPaths objectAtIndex:0];
         
         // Pass the selected object to the new view controller.
         detailViewController.foodImage = [self.foods objectAtIndex:indexPath.row].image;
         detailViewController.recipeImageName = [self.foods objectAtIndex: indexPath.row].descriptionFood;
         // [self.collectionView deselectItemAtIndexPath:indexPath animated:NO];
     }
 }



#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    //return arrayName.count;
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.foods.count;
}
//provides the data for the collection view cells
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    // Configure the cell
    UIImageView *recipeImageView = (UIImageView *)[cell viewWithTag:100];
    recipeImageView.image = [self.foods objectAtIndex:indexPath.row].image;
    
    return cell;
}


@end
