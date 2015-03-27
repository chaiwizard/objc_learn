/**
 *clang -fobjc -framework Cocoa *.m -o app
 */


#import "AppDelegate.h"

int main(int argc, char *argv[])
{
	NSApplication *app = [NSApplication sharedApplication];
	AppDelegate *appDelegate = [[AppDelegate alloc] init];
	app.delegate = appDelegate;

	int style = NSClosableWindowMask | NSResizableWindowMask | 
				NSTexturedBackgroundWindowMask | NSTitledWindowMask | NSMiniaturizableWindowMask;
	NSWindow *window = [[NSWindow alloc] initWithContentRect : NSMakeRect(50,50,600,400)
												styleMask : style
												backing:NSBackingStoreBuffered
												defer:NO];
	appDelegate.window = window;
	[window makeKeyAndOrderFront:window];
	[app run];
	

	return 0;
}
