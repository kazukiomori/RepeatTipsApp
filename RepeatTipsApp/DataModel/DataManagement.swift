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
    
    func save(context: NSManagedObjectContext) {
        do {
            try context.save()
            print("success saved")
        } catch {
            print("could not save")
        }
    }
}
