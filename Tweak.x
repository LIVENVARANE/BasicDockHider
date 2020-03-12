//
//  BasicDockHider version 1.0 by Liven
//    Follow me: u/LVN_N, @LivenOff
//    If you use anything of my tweak, please send me a private message on my twitter (@LivenOff) before publishing it.
//

%hook SBDockView

-(void)setBackgroundAlpha:(double)arg1 {
  %orig();

  NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults] persistentDomainForName:@"com.liven.bdhprefs"];

  id isDockBackgroundDisabled = [bundleDefaults valueForKey:@"enableDockBackground"];
  id isCustomDockOpacityEnabled = [bundleDefaults valueForKey:@"CustomDockOpacityEnabled"];
  id getCustomDockOpacity = [bundleDefaults valueForKey:@"CustomDockOpacity"];

  float fValO;
  fValO = [getCustomDockOpacity floatValue];

  if([isDockBackgroundDisabled isEqual:@1]) { //dock background gotta be disabled
    %orig(0.0);
  }
  else { //no modifications
    if([isCustomDockOpacityEnabled isEqual:@1]) { //dock opacity gotta be changed
      %orig(fValO);
    }
    else {
      %orig(1.0);
    }
  }
}

%end
