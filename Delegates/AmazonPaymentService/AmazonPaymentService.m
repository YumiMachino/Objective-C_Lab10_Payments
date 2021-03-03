//
//  AmazonPaymentService.m
//  Lab10_Payments
//
//  Created by Yumi Machino on 2021/03/03.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService

- (void)processPaymentAmount:(NSInteger)number {
    NSLog(@"Amazon processed amount $%ld", (long)number);
}


- (BOOL) canProcessPayment {
    NSInteger number = arc4random_uniform(2);
    if (number == 1) {
        return TRUE;
    } else {
        return FALSE;
    }
}


@end
