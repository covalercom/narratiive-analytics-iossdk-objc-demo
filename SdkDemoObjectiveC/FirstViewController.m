//
//  FirstViewController.m
//  SdkDemoObjectiveC
//
//  Created by David Lin on 26/6/20.
//  Copyright © 2020 Narratiive Audience Measurement. All rights reserved.
//

#import "FirstViewController.h"
#import "NarratiiveSDK-Swift.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void) viewWillAppear:(BOOL)animated {
    NarratiiveSDK *sdk = [NarratiiveSDK sharedInstance];
    [sdk sendWithScreenName:@"/first-page"];
}

@end
