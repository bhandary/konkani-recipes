//
//  Image+CoreDataProperties.swift
//  
//
//  Created by Manju Bhandary on 4/24/18.
//
//

import Foundation
import CoreData


extension Image {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Image> {
        return NSFetchRequest<Image>(entityName: "Image")
    }

    @NSManaged public var image: NSObject?
    @NSManaged public var recipe: Recipe?

}
