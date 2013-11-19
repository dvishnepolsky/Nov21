//
//  View.m
//  Navigate
//
//  Created by Dimitri Vishnepolsky on 11/15/13.
//  Copyright (c) dImo. All rights reserved.
//

#import "View.h"
#import "ViewController.h"

@implementation View

/*
- (id) initWithFrame: (CGRect) frame
{
	self = [super initWithFrame: frame];
	if (self) {
		// Initialization code
	}
	return self;
}
*/

- (id) initWithFrame: (CGRect) frame controller: (ViewController *__weak) c
{
	self = [super initWithFrame: frame];
	if (self) {
		// Initialization code
		self.backgroundColor = [UIColor whiteColor];
		self.font = [UIFont fontWithName: @"Courier" size: 16];
		self.editable = NO;
		viewController = c;
	}
	return self;
}


- (void) drawRect: (CGRect) rect
{
    UIImageView* myImageView = [[UIImageView alloc] initWithFrame:CGRectMake(5,20,200,200)];
    
    NSString *imagePath = [viewController title];
    imagePath = [imagePath stringByAppendingString:@".png"];
    
    
    [myImageView setImage:[UIImage imageNamed:imagePath]];
    [self addSubview:myImageView];
 
    
    UILabel* recipe = [[UILabel alloc] initWithFrame:CGRectMake(5,200,300,100)];
    //myLabel.adjustsFontSizeToFitWidth = YES;
    recipe.numberOfLines = 10;
    recipe.text = [self GetRecipeStep: [viewController title]];
    recipe.textColor = [UIColor colorWithRed:1.0 green:0.3 blue:0.0 alpha:1.0];
    recipe.font = [UIFont systemFontOfSize:10];
    [myImageView addSubview:recipe];

  
}

-(NSString *) GetRecipeStep:(NSString*) Page{
    if ([Page isEqualToString:@"Step 1"])
        return @"Sift the flour and salt into a large mixing bowl with a sieve held high above the bowl so the flour gets a airing.  Make a well in the centre of the flour and break the eggs into it.  Whisk the eggs making sure any bits of flour from around the edge of the bowl are mixed in with the egg.  Gradually add small quantities of the milk, still whisking.";
    if ([Page isEqualToString:@"Step 2"])
        return @"Continue whisking until the batter is smooth, with the consistency of thin cream. Melt the 50g/2oz of butter in a non-stick frying pan.  Spoon 2 tbsp of the melted butter into the batter and whisk it in.  Let the pancake mix stand for at least 30 minutes before cooking.";
    if ([Page isEqualToString:@"Step 3"])
        return @"Pour any left over butter into a dish. This will be used later to grease the frying pan after each pancake has been made.  Make sure the non-stick frying pan is really hot before adding about 2 tbsp of the batter mixture.  As soon as the batter hits the hot pan, tip the pan around from side to side to get the base evenly coated with batter. ";
    if ([Page isEqualToString:@"Step 4"])
        return @"Flip the pancake over with a pan slice or palette knife to cook the other side.  Stack the pancakes as you make them between sheets of greaseproof paper on a plate.  Sprinkled with caster sugar and freshly squeezed lemon juice.";
                    
    else
        return @"220g/8oz plain flour, sifted; pinch of salt; 2 eggs; 1 pint of milk; 50g/2oz butter.";
}


- (void) touchesEnded: (NSSet *) touches withEvent: (UIEvent *) event {
	[viewController nextStation];
}

@end
