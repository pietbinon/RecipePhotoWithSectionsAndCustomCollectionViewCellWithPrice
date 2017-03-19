//
//  DetailViewController.m
//  RecipePhoto
//
//  Created by Angie Linton on 2017-01-29.
//  Copyright © 2017 Angie Linton. All rights reserved.
//

#import "DetailViewController.h"



@interface DetailViewController ()

@end



@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   self.recipeImageView.image = [UIImage imageNamed:self.recipeImageName];
}

@end
