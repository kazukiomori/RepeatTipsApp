//
//  Thema+CoreDataProperties.swift
//  RepeatTipsApp
//
//  Created by Kazuki Omori on 2023/09/18.
//
//

import Foundation
import CoreData


extension Thema {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Thema> {
        return NSFetchRequest<Thema>(entityName: "Thema")
    }

    @NSManaged public var dateList: Data?
    @NSManaged public var alermTime: Date?
    @NSManaged public var startDate: Date?
    @NSManaged public var title: String?
    @NSManaged public var id: UUID?

}

extension Thema : Identifiable {

}
