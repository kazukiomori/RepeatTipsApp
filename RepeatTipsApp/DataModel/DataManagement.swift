//
//  DataManagement.swift
//  RepeatTipsApp
//
//  Created by Kazuki Omori on 2023/09/09.
//

import Foundation
import CoreData

class DataManagement: ObservableObject {
    let container = NSPersistentContainer(name: "RepeatTipsModel")
    
    init() {
        container.loadPersistentStores { desc, error in
            if let error = error {
                print("Failed to load the data \(error.localizedDescription)")
            }
        }
    }
    
    private func save(context: NSManagedObjectContext) {
        do {
            try context.save()
            print("success saved")
        } catch {
            print("could not save")
        }
    }
    
    static func addThema(title: String, time: Date, context: NSManagedObjectContext) {
        let thema = Thema(context: context)
        thema.id = UUID()
        thema.title = title
        thema.startDate = Date()
        thema.alermTime = time
        save(context: context)
    }
    
    static func doThema(thema: Thema, achieveDays:
                [Date], context: NSManagedObjectContext) {
        guard let dateList = DateUtils.convertDatesToData(dates: achieveDays) else { return }
        thema.dateList = dateList
        save(context: context)
    }
}
