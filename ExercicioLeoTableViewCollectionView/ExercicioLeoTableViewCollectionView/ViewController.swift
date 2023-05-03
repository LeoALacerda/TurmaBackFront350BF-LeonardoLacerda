//
//  ViewController.swift
//  ExercicioLeoTableViewCollectionView
//
//  Created by Leonardo Lacerda on 21/04/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var listApp: [Category] = [Category(categoryName: "Games", categoryList: [Application(appTitle: "Angry Birds", appImage: "Angry Birds"),
                                                          Application(appTitle: "Crossy Road", appImage: "Crossy Road"),
                                                          Application(appTitle: "Cut The Rope", appImage: "Cut The Rope"),
                                                          Application(appTitle: "Fruit Ninja", appImage: "Fruit Ninja"),
                                                          Application(appTitle: "Labyrinth 2", appImage: "Labyrinth 2"),
                                                          Application(appTitle: "Mario Kart Tour", appImage: "Mario Kart Tour"),
                                                          Application(appTitle: "Temple Run 2", appImage: "Temple Run 2")
                                                         ]
                               ),
                           Category(categoryName: "Developer Tools", categoryList: [Application(appTitle: "Apple Developer", appImage: "Apple Developer"),
                                                                    Application(appTitle: "TablePlus", appImage: "TablePlus"),
                                                                    Application(appTitle: "TestFlight", appImage: "TestFlight"),
                                                                    Application(appTitle: "WorldWideWeb", appImage: "WorldWideWeb"),
                                                                    Application(appTitle: "Zeitgeist", appImage: "Zeitgeist"),
                                                                   ]
                               ),
                           Category(categoryName: "Social NetWorking", categoryList: [Application(appTitle: "Facebook", appImage: "Facebook"),
                                                                      Application(appTitle: "Instagram", appImage: "Instagram"),
                                                                      Application(appTitle: "TikTok", appImage: "TikTok"),
                                                                      Application(appTitle: "Twitter", appImage: "Twitter"),
                                                                      Application(appTitle: "Whatsapp", appImage: "Whatsapp"),
                                                                      Application(appTitle: "Messenger", appImage: "Messenger"),
                                                                      Application(appTitle: "Telegram", appImage: "Telegram")
                                                                     ]
                               ),
                           Category(categoryName: "Streamings", categoryList: [Application(appTitle: "Disney+", appImage: "Disney+"),
                                                               Application(appTitle: "Globoplay", appImage: "Globoplay"),
                                                               Application(appTitle: "HBO Max", appImage: "HBO Max"),
                                                               Application(appTitle: "Netflix", appImage: "Netflix"),
                                                               Application(appTitle: "Paramount+", appImage: "Paramount+"),
                                                               Application(appTitle: "Prime Video", appImage: "Prime Video"),
                                                               Application(appTitle: "Star+", appImage: "Star+"),
                                                              ]
                               ),
                           Category(categoryName: "Navigation", categoryList: [Application(appTitle: "Anchor GPS", appImage: "Anchor GPS"),
                                                               Application(appTitle: "Apple Maps", appImage: "Apple Maps"),
                                                               Application(appTitle: "Google Maps", appImage: "Google Maps"),
                                                               Application(appTitle: "Waze", appImage: "Waze"),
                                                               Application(appTitle: "Where Am I?", appImage: "Where Am I?"),
                                                              ]
                               )
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
    }
    
    private func configureTableView(){
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(TableViewCell.nib(), forCellReuseIdentifier: TableViewCell.identifier)
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        listApp.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as? TableViewCell
        cell?.setupCell(apps: listApp[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        200
    }
}
