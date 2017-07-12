//
//  GreetingPresenter.swift
//  Mini_MVP
//
//  Created by LoyaltyWu on 17/4/4.
//  Copyright © 2017年 LoyaltyWu. All rights reserved.
//

import Foundation
import UIKit

class GreetingPresenter : GreetingViewPresenter{
    unowned let view:GreetingView
    let person:Person
    required init (view: GreetingView,person: Person){
        self.view = view
        self.person = person
    }
    func showGreeting() {
        let greeting = "Hello "+self.person.firstName+" "+self.person.lastName
        self.view.setGreeting(greeting: greeting)
    }
}
