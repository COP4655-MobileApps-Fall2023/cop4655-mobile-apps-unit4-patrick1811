//
//  Task.swift
//  lab-task-squirrel
//
//  Created by Charlie Hieger on 11/15/22.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Grabbing flowers from Flower Shop",
                 description: "These flowers are the best flowers to give your mom for Mother's Day. Nice and bright."),
            Task(title: "Going to Niagara Falls",
                 description: "Niagara Falls has one of the best water falls in the World."),
            Task(title: "Picking some beautiful vegetable plants",
                 description: "If you like to grow your own veggie plants , for example, mushrooms then you will have lots of seeds to plant for all the many veggies that are out there !")
        ]
    }
}
