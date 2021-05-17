#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    
    NSMutableArray *array = [[NSMutableArray alloc] init];
    NSInteger revNumber = 0;
    
    while (n != 0) {
        NSInteger remainder = n % 2;
        n = n / 2;
        NSNumber *num = [NSNumber numberWithInteger: remainder];
        [array addObject: num];
        
    }
    while (array.count < 8) {
        [array addObject:[NSNumber numberWithInt:0]];
    }

    for  (int i = 0; i < array.count; i++) {
        if ([array[i] integerValue] == 1) {
        revNumber += pow(2, (array.count - i - 1));
        }
    }
    return revNumber;
}
