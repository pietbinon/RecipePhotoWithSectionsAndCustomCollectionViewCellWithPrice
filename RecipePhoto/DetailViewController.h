//
//  DetailViewController.h
//  RecipePhoto
//
//  Created by Pierre Binon on 2017-01-29.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface DetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *recipeImageView;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;

@property (nonatomic) NSString *recipeImageName;
@property (nonatomic) UIImage *foodImage;

@end
