//
//  PaymentGateway.h
//  Lab10_Payments
//
//  Created by Yumi Machino on 2021/03/03.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/// Define protocol
@protocol PaymentDelegate <NSObject>
/// delegate method
@required
- (void) processPaymentAmount: (NSInteger) number;
@end


@protocol CanProcessPayment <NSObject>

- (BOOL) canProcessPayment;

@end


@interface PaymentGateway : NSObject

/// create a delegate property to refer to delegate object
@property (nonatomic) id<PaymentDelegate, CanProcessPayment> delegate;

/// delegate method
- (void) processPayment: (NSInteger) number;



@end

NS_ASSUME_NONNULL_END
