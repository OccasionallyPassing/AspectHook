//
//  UIViewController+Logging.m
//  AspectHook
//
//  Created by apple on 16/11/24.
//  Copyright © 2016年 Wang. All rights reserved.
//

#import "UIViewController+Logging.h"
#import "Aspects.h"
@implementation UIViewController (Logging)

+ (void)load
{
    [UIViewController aspect_hookSelector:@selector(viewDidAppear:)
                              withOptions:AspectPositionAfter
                               usingBlock:^(id<AspectInfo> aspectInfo) {
                                   NSString *className = NSStringFromClass([[aspectInfo instance] class]);
                                   NSLog(@"%@",className);
                                   if ([aspectInfo.instance isBeingDismissed]) {
                                       
                                   }
                               } error:NULL];
}

@end
