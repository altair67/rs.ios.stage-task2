#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    
    if (numbersArray.count == 0 || numbersArray == nil) {
        return @"";
    }
    
    NSMutableString *output = [[NSMutableString alloc] init];
    
    for (int i = 0; i < 4; i++) {
        if (i >= numbersArray.count) {
            [output appendString:@"0."];
        } else if ([numbersArray[i] integerValue] < 0) {
            return @"Negative numbers are not valid for input.";
        } else if ([numbersArray[i] integerValue] > 255) {
            return @"The numbers in the input array can be in the range from 0 to 255.";
        } else {
            [output appendFormat: @"%@.", [numbersArray[i] stringValue]];
        }
    }
    return [output substringToIndex: output.length - 1];
}

@end
