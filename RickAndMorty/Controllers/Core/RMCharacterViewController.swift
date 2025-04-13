//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Oleg Zhovtanskyi on 05/03/2025.
//

import UIKit

final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Character"
        
        let request = RMRequest(
            endpoint: .character,
            queryParameters: [
                URLQueryItem(name: "name", value: "rick"),
                URLQueryItem(name: "status", value: "alive")
            ]
        )
        print(request.url)
        
        RMService.shared.execute(request,
                                 expecting: RMCharacter.self) { result in
        }
    }
}
