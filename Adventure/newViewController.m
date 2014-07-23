//
//  newViewController.m
//  Adventure
//
//  Created by Chris Snyder on 7/22/14.
//  Copyright (c) 2014 Chris Snyder. All rights reserved.
//

#import "newViewController.h"
#import "thirdViewController.h"


@interface newViewController ()
@property (weak, nonatomic) IBOutlet UIButton *getMarried;
@property (weak, nonatomic) IBOutlet UILabel *newCharacter;

@end

@implementation newViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    thirdViewController *vc = segue.destinationViewController;
    if ([segue.identifier isEqualToString:@"GetMarried"]) {
        vc.title = self.getMarried.currentTitle;
}
}

@end
