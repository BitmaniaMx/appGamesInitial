//
//  ViewController.swift
//  appGames
//
//  Created by Rafael Gonzalez on 02/05/25.
//

import UIKit
import Alamofire
import Kingfisher

class ViewController: UIViewController{
    
    let gameService = GameService.shared
    var gamesArray = [Game]()

    @IBOutlet weak var tableGame: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableGame.dataSource = self
        tableGame.delegate = self
        
        gameService.fetchGames(){ [weak self] result in
            switch result {
            case .success(let games):
                print(games)
                DispatchQueue.main.async {
                    self?.gamesArray = games
                    self?.tableGame.reloadData()
                }
            case .failure(let error):
                print("Error: \(error)")
            }

        }
    }
}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gamesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! GameCell
        cell.gameName.text = gamesArray[indexPath.row].name
        cell.gameImage.kf.setImage(with: URL(string: gamesArray[indexPath.row].backgroundImage)!)
        cell.gameRaiting.text = String(gamesArray[indexPath.row].rating)
        cell.gameEsrbRating.text = gamesArray[indexPath.row].esrbRating?.name.rawValue
        
        return cell
    }
}


