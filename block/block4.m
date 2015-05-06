#import <Foundation/Foundation.h>

#define BaiduURL @"http://www.baidu.com"
#define SohuURL	 @"http://www.sohu.com"

typedef void(^DownloadURL)(void);

/*Retrieve a block used to download a URL*/
DownloadURL getDownloadURLBlock(NSString *url)
{
	NSString *urlString = url;
	return ^{
		//Downloads a URL
		NSURLRequest *request = [NSURLRequest
								requestWithURL : [NSURL URLWithString:urlString]];
		NSError *error;
		NSDate *startTime = [NSDate date];
		NSData *data = [NSURLConnection sendSynchronousRequest : request
											 returningResponse : nil
												         error : &error];
		if(data == nil)
		{
			NSLog(@"Error loading request
		}
	};
}

