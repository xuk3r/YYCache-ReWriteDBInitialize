//
//  YYKVStorage+ReWriteDBInitialize.h
//  
//
//  Created by xuke on 2021/12/23.
//  Copyright © 2021. All rights reserved.
//

#import <YYCache/YYKVStorage.h>

NS_ASSUME_NONNULL_BEGIN

@interface YYKVStorage (ReWriteDBInitialize)

/// customized SQL
@property (nonatomic, class) NSString *customizedSQL;

@end

NS_ASSUME_NONNULL_END
