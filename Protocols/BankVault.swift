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
    func allowEntryWithPassword(password: [Int]) -> Bool
}

extension BankVault: ProvideAccess {
    func allowEntryWithPassword(password: [Int]) -> Bool {
        var openVault: Bool = false
        if password.isEmpty {
            return openVault
        }
        if password.count > 10 {
            return openVault
        }
        for (index,number) in password.enumerated() {
            if password[0] % 2 != 0 {
                break
                return openVault
            } else {
                if index % 2 == 0 {
                    if number % 2 == 0 {
                        openVault = true
                    }
                }
            }
                
            }
        return openVault
        }
}


