//
//  ViewController.m
//  Adventure
//
//  Created by Chris Snyder on 7/22/14.
//  Copyright (c) 2014 Chris Snyder. All rights reserved.
//

#import "ViewController.h"
#import "newViewController.h"
#import "thirdViewController.h"


@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *clearButton;
@property (weak, nonatomic) IBOutlet UIButton *eatButton;
@property (weak, nonatomic) IBOutlet UILabel *outcomeLabel;
@property (weak, nonatomic) IBOutlet UITextField *nameInput;
@property (weak, nonatomic) IBOutlet UILabel*nameChange;


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    newViewController *vc  = segue.destinationViewController;
    if ([segue.identifier isEqualToString:@"ClearUpBoxes"]) {
        vc.title = self.clearButton.currentTitle;
    }else if ([segue.identifier isEqualToString:@"EatBoxes"]){
        vc.title = self.eatButton.currentTitle;


    }
}
-(IBAction)unwindAndBookIt:(UIStoryboardSegue *)sender{
    UINavigationController * vc = (UINavigationController*) sender.sourceViewController;

    self.outcomeLabel.text = vc.navigationItem.title;

}
-(IBAction)tryAgain:(UIStoryboardSegue *)sender{
    UINavigationController * vc = (UINavigationController*) sender.sourceViewController;

    self.outcomeLabel.text = vc.navigationItem.title;
}
-(IBAction)updateLabel:(id)sender{
    self.nameChange.text=self.nameInput.text;
    

}



@end
