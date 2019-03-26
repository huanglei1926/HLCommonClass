//
//  HLExtendTouchButton.h
//  HLExtendTouchButton
//
//  Created by Len on 2019/3/14.
//  Copyright © 2019 HLExtendTouchButton. All rights reserved.

#import "HLExtendTouchButton.h"

@implementation HLExtendTouchButton

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent*)event
{
    CGRect bounds = self.bounds;
    CGFloat widthDelta = MAX(self.touchAreaValue - bounds.size.width, 0);
    CGFloat heightDelta = MAX(self.touchAreaValue - bounds.size.height, 0);
    bounds = CGRectInset(bounds, -0.5 * widthDelta, -0.5 * heightDelta);
    return CGRectContainsPoint(bounds, point);
}

@end
