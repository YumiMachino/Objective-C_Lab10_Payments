//
//  main.m
//  Lab10_Payments
//
//  Created by Yumi Machino on 2021/03/03.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        PaymentGateway *paymentGateway = [[PaymentGateway alloc] init];
        
        NSInteger randomDollarValue = arc4random_uniform(900) + 100;
        NSLog(@"%ld", (long)randomDollarValue);
        
        NSLog(@"\nThank you for shopping at Acme.com. Your total today is $%ld.\nPlease select your payment method: \n1: Paypal, \n2: Stripe, \n3: Amazon", (long)randomDollarValue);
       
        char input[256];
        fgets(input, 256, stdin);
        NSString *userInput = [NSString stringWithCString:input encoding:NSUTF8StringEncoding];
        NSLog(@"%@", userInput);
        
        [paymentGateway processPaymentAmount:randomDollarValue];
        
        
    }
    return 0;
}
