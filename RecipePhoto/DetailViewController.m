//
//  DetailViewController.m
//  RecipePhoto
//
//  Created by Pierre Binon on 2017-01-29.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import "DetailViewController.h"



@interface DetailViewController ()

@end



@implementation DetailViewController

- (void) viewDidLoad {
    [super viewDidLoad];
    self.recipeImageView.image = self.foodImage;
    self.descriptionLabel.text = self.recipeImageName;
}

@end
