//
//  Food.h
//  RecipePhoto
//
//  Created by Pierre Binon on 2017-03-19.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

@import UIKit;



@interface Food : NSObject

@property (nonatomic) UIImage *image;
@property (nonatomic) NSString *descriptionFood;
@property (nonatomic) NSString *priceLabel;

- (instancetype)initWithDescription: (NSString *) description price: (NSString *) price andImage: (UIImage *) image;

@end
