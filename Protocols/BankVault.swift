//
//  BankVault.swift
//  Protocols
//
//  Created by Papa Roach on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//


class BankVault {
    
    let name: String
    let address: String
    var amount: Double = 0.0
    
    init(name: String, address: String) {
        self.name = name
        self.address = address
    }
    
}

protocol ProvideAccess {
    func allowEntryWithPassword(_ password: [Int]) -> Bool
}

extension BankVault: ProvideAccess {
    func allowEntryWithPassword(_ password: [Int]) -> Bool {
        var countV = 0
        var countI = 0
        if password.isEmpty == true {
            return false
        } else if password.count > 10 {
                return false
        } else {
            for (index, value) in password.enumerated() {
                if index % 2 == 0 {
                    countI += 1
                    if value % 2 == 0{
                        countV += 1
                    }
                }
            }
        }
        return countV == countI
    }
}

/*


 There are tests in the BankVaultTests.swift file. Press command + u to run these tests to make sure you implemented the allowEntryWithPassword(_:) function correctly.
 */





