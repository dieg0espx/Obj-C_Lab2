//
//  Box.h
//  Lab2.1
//
//  Created by Diego Espinosa on 2020-03-24.
//  Copyright © 2020 Diego Espinosa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject

@property (nonatomic, assign) float myWidth;
@property (nonatomic, assign) float myHeigth;
@property (nonatomic, assign) float myLength;

- (instancetype)initWithMyWidth:(float) myWidth andMyHeigth:(float) myHeigth andMyLength:(float) myLength;
- (float) theVolumen:(float) W1 andH1:(float) H1 andL1:(float) L1;
- (float) timesFitInside:(float) W andH:(float) H andL:(float) L;
@end

