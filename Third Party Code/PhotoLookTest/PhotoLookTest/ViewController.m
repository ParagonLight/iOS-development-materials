//
//  ViewController.m
//  PhotoLookTest
//
//  Created by waco on 12-5-30.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "UIImageView+Addition.h"

@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //statusBar是否隐藏都适用
    //[[UIApplication sharedApplication] setStatusBarHidden:YES withAnimation:UIStatusBarAnimationNone];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    //for test 1
    UIView *subView = [[UIView alloc] initWithFrame:CGRectMake(100, 300, 200, 150)];
    subView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:subView];
    [subView release];    
    
    UIImageView *imageView1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"huoxing.jpg"]];
    //oriImageView.userInteractionEnabled = YES;
    imageView1.frame = CGRectMake(100, 30, 100, 100);
    imageView1.contentMode = UIViewContentModeScaleAspectFit;
    [subView addSubview:imageView1];
    [imageView1 release];
    [imageView1 addDetailShow];   
    
    
    //for test 2
    UIImageView *imageView2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon_photo.png"]];
    imageView2.frame = CGRectMake(100, 100, 100, 100);
    [imageView2 addDetailShow];
    [self.view addSubview:imageView2];
    [imageView2 release];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
