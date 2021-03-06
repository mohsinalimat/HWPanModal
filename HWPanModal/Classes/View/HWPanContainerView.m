//
//  HWPanContainerView.m
//  HWPanModal
//
//  Created by heath wang on 2019/4/26.
//

#import "HWPanContainerView.h"

@interface HWPanContainerView ()

@property (nonatomic, strong) UIView *contentView;
@end

@implementation HWPanContainerView

- (instancetype)initWithPresentedView:(UIView *)presentedView frame:(CGRect)frame {
	self = [super initWithFrame:frame];
    if (self) {
    	_contentView = [UIView new];
    	_contentView.frame = self.bounds;
		[self addSubview:_contentView];

		[_contentView addSubview:presentedView];
    }
	
    return self;
}

@end

@implementation UIView (PanContainer)

- (HWPanContainerView *)panContainerView {
	for (UIView *subview in self.subviews) {
		if ([subview isKindOfClass:HWPanContainerView.class]) {
			return (HWPanContainerView *) subview;
		}
	}
	return nil;
}


@end
