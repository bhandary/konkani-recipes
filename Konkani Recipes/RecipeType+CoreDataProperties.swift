//
//  RecipeType+CoreDataProperties.swift
//  
//
//  Created by Manju Bhandary on 4/24/18.
//
//

import Foundation
import CoreData


extension RecipeType {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<RecipeType> {
        return NSFetchRequest<RecipeType>(entityName: "RecipeType")
    }

    @NSManaged public var name: String?
    @NSManaged public var recipes: NSSet?

}

// MARK: Generated accessors for recipes
extension RecipeType {

    @objc(addRecipesObject:)
    @NSManaged public func addToRecipes(_ value: Recipe)

    @objc(removeRecipesObject:)
    @NSManaged public func removeFromRecipes(_ value: Recipe)

    @objc(addRecipes:)
    @NSManaged public func addToRecipes(_ values: NSSet)

    @objc(removeRecipes:)
    @NSManaged public func removeFromRecipes(_ values: NSSet)

}
