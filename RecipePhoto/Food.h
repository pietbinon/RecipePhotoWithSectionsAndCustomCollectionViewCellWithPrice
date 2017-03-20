//
//  Food.h
//  RecipePhoto
//
//  Created by Pierre Binon on 2017-03-19.
//  Copyright © 2017 Angie Linton. All rights reserved.
//

@import UIKit;



@interface Food : NSObject

@property (nonatomic) UIImage *image;
@property (nonatomic) NSString *descriptionFood;

- (instancetype)initWithDescription: (NSString *) description andImage: (UIImage *) image;



@end
