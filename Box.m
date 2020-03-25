//
//  Box.m
//  Lab2.1
//
//  Created by Diego Espinosa on 2020-03-24.
//  Copyright © 2020 Diego Espinosa. All rights reserved.
//

#import "Box.h"


@interface Box() {
}
@end

@implementation Box {
}

- (instancetype)initWithMyWidth:(float) myWidth andMyHeigth:(float) myHeigth andMyLength:(float) myLength
{
    self = [super init];
    if (self) {
        _myWidth = myWidth;
        _myHeigth = myHeigth;
        _myLength = myLength;
    }
    return self;
}

- (float) theVolumen:(float) W1 andH1:(float) H1 andL1:(float) L1{
    return (W1*H1*L1);
}

- (float) timesFitInside:(float) W2 andH:(float) H2 andL:(float) L2{
    float vol1 = (W2*H2*L2);
    float vol2 = (_myWidth*_myHeigth*_myLength);
    
    if (vol1 > vol2) {
        return vol1 / vol2;
    }else if ( vol2 > vol1){
        return vol2 / vol1;
    }
    return 0.0;
}
@end
