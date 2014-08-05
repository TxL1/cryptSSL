//
//  ViewController.m
//  cryptSSL
//
//  Created by Jose L. - TxL on 30/07/14.
//  Copyright (c) 2014 com.chiefcore. All rights reserved.
//

#import "ViewController.h"
#import "SSCrypto.h"

@implementation ViewController

- (void)viewDidLoad{
    [super viewDidLoad];

    // generate a private key
    NSData *privateKeyData = [SSCrypto generateRSAPrivateKeyWithLength:2048];
    NSLog(@"%s", [privateKeyData bytes]);
    
    // generate a public key from the private key data
    NSData *publicKeyData = [SSCrypto generateRSAPublicKeyFromPrivateKey:privateKeyData];
    NSLog(@"%s", [publicKeyData bytes]);
}

@end
