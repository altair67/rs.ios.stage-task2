#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    
    if (array == nil || ![array.firstObject isKindOfClass:[NSArray class]]) {
        return @[];
    }
    
    NSMutableArray *numbers = [[NSMutableArray alloc] init];
    NSMutableArray *strings = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < array.count; i++) {
        for (int j = 0; j < array[i].count; j++) {
            if ([array[i][j] isKindOfClass: [NSNumber class]]) {
                [numbers addObject: array[i][j]];
            }
            if ([array[i][j] isKindOfClass:[NSString class]]) {
                [strings addObject: array[i][j]];
            }
        }
    }
   
    if (numbers.count == 0) {
        [strings sortUsingSelector:@selector(compare:)];
        return strings;
    } else if (strings.count == 0) {
        [numbers sortUsingSelector:@selector(compare:)];
        return numbers;
    }
    
    [numbers sortUsingSelector:@selector(compare:)];
    NSSortDescriptor *sort = [NSSortDescriptor sortDescriptorWithKey:@"self" ascending:NO selector:@selector(compare:)];
    [strings sortUsingDescriptors:@[sort]];
    return [NSArray arrayWithObjects:numbers, strings, nil];
    
    
}

@end
