//
//  HIFoundation.h
//  HIKit
//
//  Created by Apple on 2019/7/17.
//  Copyright © 2019 MR-HI. All rights reserved.
//

#import <Foundation/Foundation.h>

#define HILog(TYPE, FORMAT, ...) if(HILogEnable) NSLog((@"\n< ----------- %@ ----------- >\n\nMESSAGES: [ " FORMAT " ]\n\n" "FILENAME: %s\n" "FUNCTION: %s\n" "LINENUMB: %d" "\n^_^ ------------------------- ^_^\n"), TYPE, ##__VA_ARGS__, [[[NSString stringWithUTF8String:__FILE__] lastPathComponent] UTF8String], __FUNCTION__, __LINE__)    //  自定义日志

NS_ASSUME_NONNULL_BEGIN

@interface HIFoundation : NSObject

@end

NS_ASSUME_NONNULL_END
