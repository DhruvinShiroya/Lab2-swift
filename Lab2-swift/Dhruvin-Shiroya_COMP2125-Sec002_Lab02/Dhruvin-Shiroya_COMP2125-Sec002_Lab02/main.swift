//
//  main.swift
//  Dhruvin-Shiroya_COMP2125-Sec002_Lab02
//
//  Created by dhruvin on 2023-06-06.
//

import Foundation

let account1 = BankAccount(accountNumber: 100101, customerName: "dhruvin shiroya")
print("---------------------------------------")
account1.credit(amount: 12000)
account1.debit(amount: 23)
print("---------------------------------------")
print("Interest on the account \(account1.customerName) \n at end of \(account1.year) is : $\(String(format: "%.2f", account1.interest))")
print("---------------------------------------")
print(account1.description)
print("---------------------------------------")



let account2 = BankAccount(accountNumber: 100105, customerName: "halen parley",interestRate: 1.2, accountBalance: 50000 , year: 5)

print(account2.description)
print("---------------------------------------")
account2.credit(amount: 15000)
account2.debit(amount: 5000)
print("---------------------------------------")
print("Interest on the account \(account2.customerName) \n at end of \(account2.year) is : $\(String(format: "%.2f", account2.interest))")
print("---------------------------------------")
print(account2.description)
print("---------------------------------------")
