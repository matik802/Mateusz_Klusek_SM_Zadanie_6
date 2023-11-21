//
//  ViewController.m
//  Mateusz_Klusek_SM_Zadanie_6
//
//  Created by user251302 on 11/20/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //[_informationButton setTitle:@"Information" forState:UIControlStateNormal];
    [_informationButton setTitle:NSLocalizedString(@"Information", nil)
                        forState:UIControlStateNormal];
    [_image setImage:[UIImage imageNamed:NSLocalizedString(@"image", nil)]];
    // Do any additional setup after loading the view.
}
-(IBAction)informationAction {
    //NSLocalizedString(@"Information",nil) <#comment#>)
    UIAlertController *alertDialog= [UIAlertController alertControllerWithTitle
    //:@"Information"
    :NSLocalizedString(@"Information",nil)
    message:[NSString stringWithFormat:NSLocalizedString(@"The faculty is running %i programs on graduate and undergraduate level.",nil),4]
    //message:[NSString stringWithFormat:@"The faculty is running %i programs at graduate and undergraduate level.",4]
    preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *defaultAction=[UIAlertAction actionWithTitle:@"OK"
                                                          style:UIAlertActionStyleDefault
                                                        handler:^(UIAlertAction *action){}];
    [alertDialog addAction:defaultAction];
    [self presentViewController:alertDialog animated:YES completion:nil];
}

@end
