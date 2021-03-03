//
//  main.m
//  Lab10_Payments
//
//  Created by Yumi Machino on 2021/03/03.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"
#import "ApplePaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        PaymentGateway *paymentGateway = [[PaymentGateway alloc] init];
        
        NSInteger randomDollarValue = arc4random_uniform(900) + 100;

        NSLog(@"-------------------------------------------------------------");
        NSLog(@"Thank you for shopping at @Acme.com. Your total today is $%ld.",(long)randomDollarValue);
        NSLog(@"Please select your payment method:");
        NSLog(@"1: Paypal  2: Stripe  3: Amazon 4: Apple");
        char input[256];
        fgets(input, 256, stdin);
        NSString *userInput = [[NSString stringWithCString:input encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
        NSInteger userInputInInt = [userInput intValue];
        
        switch (userInputInInt) {
            case 1:{
                PaypalPaymentService *paypal = [[PaypalPaymentService alloc] init];
                paymentGateway.delegate = paypal;
                [paymentGateway processPayment:randomDollarValue];
                break;
            }
            case 2:{
                StripePaymentService *stripe = [[StripePaymentService alloc] init];
                paymentGateway.delegate = stripe;
                [paymentGateway processPayment:randomDollarValue];
                break;
            }
            case 3:{
                AmazonPaymentService *amazon = [[AmazonPaymentService alloc] init];
                paymentGateway.delegate = amazon;
                [paymentGateway processPayment:randomDollarValue];
                break;
            }
            case 4: {
                ApplePaymentService *apple = [[ApplePaymentService alloc]init];
                paymentGateway.delegate = apple;
                [paymentGateway processPayment:randomDollarValue];
            }
        }
    }
    return 0;
}
