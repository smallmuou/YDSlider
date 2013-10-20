//
//  YDViewController.m
//  YDSlider
//
//  Created by xuwf on 13-10-20.
//  Copyright (c) 2013年 xuwf. All rights reserved.
//

#import "YDViewController.h"
#import "YDSlider.h"

#define YDIMG(__name) [UIImage imageNamed:__name]

@interface YDViewController () {
    YDSlider* _slider1;
    YDSlider* _slider2;
    YDSlider* _slider3;
}

@end

@implementation YDViewController
@synthesize slider1 = _slider1;
@synthesize slider2 = _slider2;
@synthesize slider3 = _slider3;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    /* slider1 */
    _slider1.value = 0.3;
    _slider1.middleValue = 0.7;
    
    
    /* slider2 */
    _slider2.value = 0.3;
    _slider2.middleValue = 0.7;
    _slider2.thumbTintColor = [UIColor magentaColor];
    _slider2.minimumTrackTintColor = [UIColor orangeColor];
    _slider2.middleTrackTintColor = [UIColor greenColor];
    _slider2.maximumTrackTintColor = [UIColor blueColor];
    
    /* slider3 */
    _slider3.value = 0.3;
    _slider3.middleValue = 0.7;
    [_slider3 setThumbImage:YDIMG(@"player-progress-point") forState:UIControlStateNormal];
    [_slider3 setThumbImage:YDIMG(@"player-progress-point-h") forState:UIControlStateHighlighted];
    [_slider3 setMinimumTrackImage:[YDIMG(@"player-progress-h") resizableImageWithCapInsets:UIEdgeInsetsMake(4, 3, 5, 4) resizingMode:UIImageResizingModeStretch]];
    [_slider3 setMiddleTrackImage:[YDIMG(@"player-progress-loading") resizableImageWithCapInsets:UIEdgeInsetsMake(4, 3, 5, 4) resizingMode:UIImageResizingModeStretch]];
    [_slider3 setMaximumTrackImage:[YDIMG(@"player-progress") resizableImageWithCapInsets:UIEdgeInsetsMake(4, 3, 5, 4) resizingMode:UIImageResizingModeStretch]];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)onSliderValueChanged:(YDSlider* )slider {
    NSLog(@"Slider value=%f, middleValue=%f", slider.value, slider.middleValue);
}


@end
