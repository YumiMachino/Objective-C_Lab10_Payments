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



@interface PaymentGateway : NSObject

/// create a delegate property to refer to delegate object
@property (nonatomic) id<PaymentDelegate> delegate;


/// delegate method
- (void) processPaymentAmount: (NSInteger) number;

@end

NS_ASSUME_NONNULL_END
