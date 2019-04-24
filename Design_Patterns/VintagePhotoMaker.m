//
//  VintagePhotoMaker.m
//  Design_Patterns
//
//  Created by Anton Kuznetsov on 24/04/2019.
//  Copyright © 2019 Anton Kuznetsov. All rights reserved.
//

#import "VintagePhotoMaker.h"

@implementation VintagePhotoMaker

- (UIImage *) applyForImage: (UIImage *)photo
{
    
    CIContext *context = [CIContext contextWithOptions:nil];
    CIImage *ciImage = [[CIImage alloc] initWithImage:photo];
    CIFilter *filter = [CIFilter filterWithName:@"CISepiaTone"];
    [filter setValue:ciImage forKey:kCIInputImageKey];
    [filter setValue:@0.5 forKey:@"inputIntensity"];
    
    CIImage *result = [filter valueForKey:kCIOutputImageKey];
    CGRect extent = [result extent];
    CGImageRef cgImage = [context createCGImage:result fromRect:extent];
    UIImage *filteredImage = [[UIImage alloc] initWithCGImage:cgImage];
    
    return filteredImage;
}
@end
