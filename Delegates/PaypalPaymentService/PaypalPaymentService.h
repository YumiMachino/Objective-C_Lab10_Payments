//
//  PaypalPaymentService.h
//  Lab10_Payments
//
//  Created by Yumi Machino on 2021/03/03.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

NS_ASSUME_NONNULL_BEGIN

@interface PaypalPaymentService : NSObject <PaymentDelegate, CanProcessPayment>

- (void)processPaymentAmount:(NSInteger)number;
- (BOOL) canProcessPayment;

@end

NS_ASSUME_NONNULL_END
