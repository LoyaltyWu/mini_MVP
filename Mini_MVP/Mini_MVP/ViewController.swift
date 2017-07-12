//
//  ViewController.swift
//  Mini_MVP
//
//  Created by LoyaltyWu on 17/4/4.
//  Copyright © 2017年 LoyaltyWu. All rights reserved.
//

import UIKit


/*
 class Assembly{
 let model = Person(firstName: "David", lastName: "Blaine")
 let vieww = GreetingViewController()
 let presenter = GreetingPresenter(view: view, person: model)
 vieww.presenter = presenter
 }
 */

class ViewController: UIViewController,GreetingView {
    
    var presenter: GreetingViewPresenter!
    @IBOutlet weak var showGreetingButton: UIButton!
    @IBOutlet weak var greetingLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // let model = Person(firstName: "David", lastName: "Blaine")

        self.showGreetingButton.addTarget(self, action: #selector(self.didTapButton), for: .touchUpInside)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func didTapButton(){
        self.presenter.showGreeting()
    }
    
    func setGreeting(greeting: String) {
        self.greetingLabel.text = greeting
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

