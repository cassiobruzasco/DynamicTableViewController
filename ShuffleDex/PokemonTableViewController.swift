//
//  PokemonTableViewController.swift
//  ShuffleDex
//
//  Created by Cassio Nicolai Bruzasco on 24/05/20.
//  Copyright © 2020 Cassio Nicolai Bruzasco. All rights reserved.
//

import UIKit

class PokemonTableViewController: UITableViewController {
    
    //MARK: - Properties
    var pokemon: [Pokemon] = []
    let cell = "PokemonTableViewCell"
        
    //MARK: - Super Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        loadPokemon()
    }
    
    
    //MARK: - Methods
    private func loadPokemon() {
        guard let jsonURL = Bundle.main.url(forResource: "poke", withExtension: "json") else {return}
        do {
            let jsonData = try Data(contentsOf: jsonURL)
            let jsonDecoder = JSONDecoder()
            pokemon = try jsonDecoder.decode([Pokemon].self, from: jsonData)
            tableView.reloadData()
        } catch {
            print(error)
        }
    }

    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokemon.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cell, for: indexPath) as? PokemonTableViewCell else {return UITableViewCell()}
        
        let fPokemon = pokemon[indexPath.row]
        cell.config(with: fPokemon)
        
        return cell
    }
}
