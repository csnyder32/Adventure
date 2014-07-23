//
//  fourthViewController.m
//  Adventure
//
//  Created by Chris Snyder on 7/22/14.
//  Copyright (c) 2014 Chris Snyder. All rights reserved.
//

#import "fourthViewController.h"
#import "fifthViewController.h"


@interface fourthViewController ()
@property (weak, nonatomic) IBOutlet UIButton *disasterButton;

@end

@implementation fourthViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    fifthViewController *vc = segue.destinationViewController;
    if ([segue.identifier isEqualToString:@"Disaster"]) {
        vc.title = self.disasterButton.currentTitle;
}
}


@end
