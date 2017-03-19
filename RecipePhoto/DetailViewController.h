//
//  DetailViewController.h
//  RecipePhoto
//


#import <UIKit/UIKit.h>



@interface DetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *recipeImageView;
@property (nonatomic) NSString *recipeImageName;

@end
