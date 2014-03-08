AFPopupView
=======================

A simple to use and functional popup view for iOS, as seen in Wunderlist iOS app.

##Preview

![alt text](https://raw.github.com/AlvaroFranco/AFPopupView/master/preview.gif "Example")

##Cocoapods

AFPopupView is on [CocoaPods](http://cocoapods.org), so you can get the pod by adding this line to your Podfile

    pod 'AFPopupView', '~> 1.0'

If not, just import these files to your project:

    AFPopupView.h
    AFPopupView.m

##Usage

First of all, make sure that you've added to your project the ```QuartzCore``` framework.

Import AFPopupView to your class

    #import "AFPopupView.h"

Declare ```AFPopupView```

   @property (nonatomic, strong) AFPopupView *popup;

Init the class with ```-popupWithView:``` assigning a valid UIView that will be shown. When you're ready to open the view, just call ```-show```

    _popup = [AFPopupView popupWithView:_modalTest.view];
    [_popup show];

To hide it, call ```-hide```

    [_popup hide];

##Author

Made by Alvaro Franco. If you have any question, feel free to drop me a line at [alvarofrancoayala@gmail.com](mailto:alvarofrancoayala@gmail.com)