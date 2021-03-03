//
//  StripePaymentService.m
//  Lab10_Payments
//
//  Created by Yumi Machino on 2021/03/03.
//

#import "StripePaymentService.h"

@implementation StripePaymentService

- (void)processPaymentAmount:(NSInteger)number {
    NSLog(@"Stripe processed amount $%ld", (long)number);
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
