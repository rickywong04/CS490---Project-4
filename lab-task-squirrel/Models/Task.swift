//
//  Task.swift
//  
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
            Task(title: "Your favorite hiking spot!",
                 description: "Where is your favorite place to be with nature?"),
            Task(title: "Your favorite restaurant!",
                 description: "Your favorite munch?"),
            Task(title: "Your favorite part of the city!",
                 description: "From the mural to the statues, show me your favorite!"),
            Task(title: "Your school!", description: "Just take a photo of your school. That's all!")
        ]
    }
}
