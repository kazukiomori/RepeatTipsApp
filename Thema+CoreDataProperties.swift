//
//  Thema+CoreDataProperties.swift
//  RepeatTipsApp
//
//  Created by Kazuki Omori on 2023/09/12.
//
//

import Foundation
import CoreData


extension Thema {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Thema> {
        return NSFetchRequest<Thema>(entityName: "Thema")
    }

    @NSManaged public var title: String?
    @NSManaged public var dateList: Data?
    @NSManaged public var detail: String?
    @NSManaged public var startDate: Date?

}

extension Thema : Identifiable {

}
