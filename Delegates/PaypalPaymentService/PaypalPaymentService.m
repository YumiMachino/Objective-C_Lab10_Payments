//
//  PaypalPaymentService.m
//  Lab10_Payments
//
//  Created by Yumi Machino on 2021/03/03.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

- (void)processPaymentAmount:(NSInteger)number {
    NSLog(@"Paypal processed amount $%ld", (long)number);
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
