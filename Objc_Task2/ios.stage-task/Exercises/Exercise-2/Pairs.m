#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    NSInteger count = 0;
    for (NSInteger i = 0; i < array.count; i++) {
        for (NSInteger j = i + 1; j < array.count; j++) {
            if (labs(array[i].integerValue  - array[j].integerValue) == number.integerValue ) {
                count += 1;
            }
        }
    }
    return count;
}

@end
