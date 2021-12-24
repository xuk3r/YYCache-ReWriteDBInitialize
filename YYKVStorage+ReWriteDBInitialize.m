//
//  YYKVStorage+ReWriteDBInitialize.m
//  
//
//  Created by xuke on 2021/12/23.
//  Copyright © 2021. All rights reserved.
//

#import "YYKVStorage+ReWriteDBInitialize.h"

static NSString *_customizedSQL;

@implementation YYKVStorage (ReWriteDBInitialize)

- (BOOL)_dbInitialize {
    /**
     journal_size_limit 1000
     https://www.sqlite.org/pragma.html#pragma_journal_size_limit
     
     wal_autocheckpoint 1
     https://www.sqlite.org/pragma.html#pragma_wal_autocheckpoint
    */
    NSString *sql = _customizedSQL.length > 0 ? _customizedSQL : @"pragma journal_mode = wal; pragma journal_size_limit = 1000; pragma wal_autocheckpoint = 1; pragma synchronous = normal; create table if not exists manifest (key text, filename text, size integer, inline_data blob, modification_time integer, last_access_time integer, extended_data blob, primary key(key)); create index if not exists last_access_time_idx on manifest(last_access_time);";
    
    BOOL flag = NO;
    SEL sel = NSSelectorFromString(@"_dbExecute:");
    if ([self respondsToSelector:sel]) {
_Pragma("clang diagnostic push")
_Pragma("clang diagnostic ignored \"-Warc-performSelector-leaks\"")
        flag = [self performSelector:sel withObject:sql];
_Pragma("clang diagnostic pop")
    } else {
        NSAssert(0, @"can't call method _dbExecute:");
    }
    return flag;
}

+ (NSString *)customizedSQL {
    return _customizedSQL;
}

+ (void)setCustomizedSQL:(NSString *)customizedSQL {
    _customizedSQL = customizedSQL;
}

@end
