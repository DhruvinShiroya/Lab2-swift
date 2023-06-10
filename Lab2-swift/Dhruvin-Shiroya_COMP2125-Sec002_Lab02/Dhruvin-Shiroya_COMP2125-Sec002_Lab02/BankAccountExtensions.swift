//
//  BankAccountExtensions.swift
//  Dhruvin-Shiroya_COMP2125-Sec002_Lab02
//
//  Created by dhruvin on 2023-06-10.
//

import Foundation

extension BankAccount {
    
    public var interest: Double{
        return (Double(year) * Double(interestRate) * accountBalance) / 100
    }
    
    convenience init(accountNumber : UInt32, customerName : String ){
        self.init(accountNumber : accountNumber, customerName : customerName, interestRate : 0.1 , accountBalance : 10 , year : 1)
    }
    
    convenience init(accountNumber : UInt32 , customerName : String , interestRate : Float , accountBalance : Double ){
        self.init(accountNumber : accountNumber , customerName : customerName , interestRate : interestRate , accountBalance : accountBalance, year : 1)
    }
}
