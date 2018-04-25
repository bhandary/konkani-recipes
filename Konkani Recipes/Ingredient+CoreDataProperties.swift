//
//  Ingredient+CoreDataProperties.swift
//  
//
//  Created by Manju Bhandary on 4/24/18.
//
//

import Foundation
import CoreData


extension Ingredient {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Ingredient> {
        return NSFetchRequest<Ingredient>(entityName: "Ingredient")
    }

    @NSManaged public var amount: String?
    @NSManaged public var displayOrder: Int16
    @NSManaged public var name: String?
    @NSManaged public var recipe: Recipe?

}
