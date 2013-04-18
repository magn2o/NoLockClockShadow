#import <SpringBoard/SBAwayDateView.h>
#import <TelephonyUI/TPLCDTextView.h>

%hook SBAwayDateView

-(void)setFrame:(CGRect)frame
{
    %orig;
    
    TPLCDTextView *timeLabel = MSHookIvar<TPLCDTextView *>(self, "_timeLabel");
    TPLCDTextView *dateLabel = MSHookIvar<TPLCDTextView *>(self, "_dateAndTetheringLabel");
    
    [timeLabel setShadowColor:[UIColor clearColor]];        
    [dateLabel setShadowColor:[UIColor clearColor]];
}

%end
