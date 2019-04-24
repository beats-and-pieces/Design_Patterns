//
//  ViewController.m
//  Design_Patterns
//
//  Created by Anton Kuznetsov on 24/04/2019.
//  Copyright © 2019 Anton Kuznetsov. All rights reserved.
//

#import "ViewController.h"
#import "VintagePhotoMaker.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    VintagePhotoMaker *vintagePhotoMaker = [VintagePhotoMaker new];
    UIImage *newAndBoringPhoto = [UIImage new];
    UIImage *coolVintagePhoto = [vintagePhotoMaker applyForImage:newAndBoringPhoto];
}


@end
