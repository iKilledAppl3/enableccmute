//Created by iKilledAppl3 on Feb. 22, 2017 
//Enable the native CC Mute Toggle for all iOS devices.


#import <UIKit/UIKit.h>

%hook CCUIMuteSetting
	
+(BOOL)isSupported:(int)arg1 {
	return TRUE;
	return %orig;
}

-(BOOL)isRestricted {
	return FALSE;
	return %orig;
}
%end
	