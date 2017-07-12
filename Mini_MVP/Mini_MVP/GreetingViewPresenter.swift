//
//  GreetingViewPresenter.swift
//  Mini_MVP
//
//  Created by LoyaltyWu on 17/4/4.
//  Copyright © 2017年 LoyaltyWu. All rights reserved.
//

import Foundation

protocol GreetingViewPresenter {
    init(view: GreetingView,person: Person)
    func showGreeting()
}
