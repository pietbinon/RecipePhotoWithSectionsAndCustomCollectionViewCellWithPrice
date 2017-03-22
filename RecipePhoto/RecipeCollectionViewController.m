//
//  RecipeCollectionViewController.m
//  RecipePhoto
//
//  Created by Pierre Binon on 2017-01-29.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import "RecipeCollectionViewController.h"
#import "DetailViewController.h"
#import "Food.h"
#import "FoodCollection.h"
#import "FoodCell.h"


@class DetailViewController;

//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
//DON'T FORGET TO CONTROL DRAG FROM ANYWHERE IN MAIN VIEW CONTROLLER TO THE TOP TO MAKE THE CONTROLLER THE DATA SOURCE AND DELEGATE
//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!



@interface RecipeCollectionViewController ()

@property (nonatomic) NSArray *foods;

@end




@implementation RecipeCollectionViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.foods = [FoodCollection returnArrayOfFoods];
    
    //Add space between the two sections
    UICollectionViewFlowLayout *collectionViewLayout = (UICollectionViewFlowLayout*)self.collectionView.collectionViewLayout;
    collectionViewLayout.sectionInset = UIEdgeInsetsMake(20, 0, 20, 0);
}




#pragma mark - prepareForSegue

 // In a storyboard-based application, you will often want to do a little preparation before navigation
 // To connect the segue in storyboard, control drag from foodcell in scene to anywhere in detail view controller (Selection Segue: Show)
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
     
     if ([segue.identifier isEqualToString:@"showRecipePhoto"]) {
         
         //Passes the element selected, so the array in this case would have only one element but it is possible to pass more than one item and this is the reason why it is stored in an array
         NSArray *indexPaths = [self.collectionView indexPathsForSelectedItems];
         
         // Get the new view controller using [segue destinationViewController].
         DetailViewController *detailViewController = segue.destinationViewController;
         NSIndexPath *indexPath = [indexPaths objectAtIndex: 0];
         
         // Pass the selected object to the new view controller.
         Food *foodselected = self.foods[indexPath.section][indexPath.row];
         
         detailViewController.foodImage = foodselected.image;
         detailViewController.recipeImageName = foodselected.descriptionFood;
     }
 }




#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    
    return self.foods.count;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return [[self.foods objectAtIndex: section] count];
}


//Provides the data for the collection view cells
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    FoodCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"foodCell" forIndexPath:indexPath];
    
    // Configure the cell
    UIImageView *recipeImageView = (UIImageView *)[cell viewWithTag:100];
    Food *foodselected = self.foods[indexPath.section][indexPath.row];
    recipeImageView.image = foodselected.image;
    cell.label.text = [NSString stringWithFormat: @"Item #%d", (int)indexPath.item + 1];
    
    return cell;
}


//Section title - For this don't forget to add an image view before the label!!!
- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    
    UICollectionReusableView *reusableview = nil;
    
    if (kind == UICollectionElementKindSectionHeader) {
        RecipeCollectionHeaderView *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"HeaderView" forIndexPath:indexPath];
        
        NSString *labelText;
        if (indexPath.section == 0) {
            labelText = @"Main Dishes";
        } else if (indexPath.section == 1) {
            labelText = @"Desserts";
        }
        
        //Do the following to have the header to display something like "Recipe Group #"
        //NSString *title = [[NSString alloc]initWithFormat:@"Recipe Group #%li", indexPath.section + 1];
        //headerView.title.text = title;
        
        headerView.title.text = labelText;
        reusableview = headerView;
    }
    return reusableview;
}

@end
