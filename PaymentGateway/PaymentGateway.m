//
//  PaymentGateway.m
//  Lab10_Payments
//
//  Created by Yumi Machino on 2021/03/03.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

- (void) processPayment: (NSInteger) number {
    if ([self.delegate canProcessPayment]) {
        [self.delegate processPaymentAmount: (NSInteger) number];
    } else
        NSLog(@"Sorry, your payment cannot not be processed.");
}


- (BOOL) canProcessPayment {
    return TRUE;
}

@end
