//
//  Food.h
//  RecipePhoto
//
//  Created by Pierre Binon on 2017-03-19.
//  Copyright © 2017 Angie Linton. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface Food : NSObject

@property (nonatomic) NSString *imageName;
@property (nonatomic) NSString *description;

- (instancetype)initWithDescription: (NSString *) description andImageName: (NSString *) imageName;



@end
