//
//  PaypalPaymentService.h
//  Lab10_Payments
//
//  Created by Yumi Machino on 2021/03/03.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

NS_ASSUME_NONNULL_BEGIN

@interface PaypalPaymentService : NSObject <PaymentDelegate>

- (void)processPaymentAmount:(NSInteger)number;

@end

NS_ASSUME_NONNULL_END
