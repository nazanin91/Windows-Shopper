//
//  Wage.swift
//  Windows-Shopper
//
//  Created by Nazanin on 4/4/1397 AP.
//  Copyright © 1397 Nazanin. All rights reserved.
//

import Foundation
class Wage{
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int{
        return Int(ceil(price / wage))
    }
    
}
