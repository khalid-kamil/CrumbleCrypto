//
//  PortfolioEntity.swift
//  CrumbleCrypto
//
//  Created by Khalid Kamil on 23/12/2023.
//

import CoreData

@objc(PortfolioEntity)
class PortfolioEntity: NSManagedObject {
    @NSManaged var coinID: String
    @NSManaged var amount: Double
}
