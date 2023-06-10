//
//   BankAccount.swift
//  Dhruvin-Shiroya_COMP2125-Sec002_Lab02
//
//  Created by dhruvin on 2023-06-06.
//

import Foundation

public class BankAccount {
//    Account number, customer name, yearly interest rate, account balance and year as
//    Stored properties [2 marks]
//    b) Account balance should be greater than or equal to $10.00 at all the time. (default –
//    $10.00) [2 marks]
//    c) Interest rate should be positive and between 0.1 and 2.0 % (default – 0.1) [2 marks]
//    d) Year should be positive and between 1 and 5 (both inclusive, default - 1) [2 marks]

//    e) You need to define property observers – didSet for all the properties except Account
//    number and customer name. They should have private set so that they cannot be
//    modified outside the class. [2 marks]
//    f) Define a description as computed property which display all the values of a
//    BankAccount object. [2 marks]
//    g) Define two designated initializers, one which initializes all the properties to their
//    default values and one which initializes to appropriate values (chosen by user) [2 marks]
//    h) Define two functions- one is credit(amount:Double) { } which is used for depositing
//    money and second which is debit(amount:Double) { ...} which is used for withdrawing
//    money. Customer can have any numbers of withdrawals. After every withdrawal,
//    account balance should be greater than or equal to $10.00 [6 marks]
//    i) Add a deinitializer also. deInit { } [
    
    static var serialAccountNumber  = 1000000
    private(set) var accountNumber : UInt32
    private(set) var customerName : String
    public var interestRate : Float = 0.1{
        didSet {
            if(interestRate < 0.1 || interestRate > 2.0 ){
                print("Please enter valid interest rate that should be in range of 0.1 to 2.0 ")
               interestRate = oldValue
            }
        }
    }
    public var accountBalance : Double = 10{
        didSet {
            if(accountBalance < 10){
                print("Please enter valid account balance greater 10 ")
                accountBalance = oldValue
            }
        }
    }
    public var year : Int = 1 {
        didSet {
            if(year < 1 || year > 5){
                print("Please enter valid year between 1 and 5 ")
                year = oldValue
            }
        }
    };
    
    public var description: String {
        return String(format: "Account number : %d\nCustomer name : %@\nInterest Rate : %0.2f\nAccount balance : %0.2f\nYear : %d", accountNumber, customerName, interestRate, accountBalance, year)
    }
    
    public init (){
//        BankAccount.serialAccountNumber += 1
//        self.accountNumber = UInt32(BankAccount.serialAccountNumber)
        self.accountNumber = 0
        self.customerName = "John Doe"
        self.interestRate = 0.1
        self.accountBalance = 10
        self.year = 1
    }
    
    public init (accountNumber : UInt32,customerName : String , interestRate : Float , accountBalance : Double, year : Int ){
        self.accountBalance = accountBalance
        self.interestRate = interestRate
        self.customerName = customerName
        self.year = year
        if(accountNumber > 0){
            self.accountNumber = accountNumber
        }else{
        BankAccount.serialAccountNumber += 1
        self.accountNumber = UInt32(BankAccount.serialAccountNumber)
        }
    }
    		
    // to delete the account
    deinit {
        print("Bank Account destroyed: \(self.customerName); with AccountNumber = \(self.accountNumber)")
    }
    
    // to deposite the money
    func credit(amount : Double) {
        
        self.accountBalance += amount
        print("\(self.customerName) has deposited: $\(amount)\n Account Balance : $\(accountBalance)")
    }
    
    // to withdraw money
    func debit(amount : Double)  {
        let newBalance = self.accountBalance - amount
        if(newBalance > 10){
            self.accountBalance -= amount
            print("\(self.customerName) has withdraw: $\(amount)\n Account Balance : $\(accountBalance)")
        }else{
            print("withdraw filaed , Account Balance : $\(accountBalance)")
        }
        
    }
  
    
     
    
    
    
    
    
    
}
