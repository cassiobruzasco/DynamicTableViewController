//
//  PokemonTableViewCell.swift
//  ShuffleDex
//
//  Created by Cassio Nicolai Bruzasco on 24/05/20.
//  Copyright © 2020 Cassio Nicolai Bruzasco. All rights reserved.
//

import UIKit

class PokemonTableViewCell: UITableViewCell {
    
    //MARK: - Properties
    
    @IBOutlet weak var pokemonImg: UIImageView!
    @IBOutlet weak var pokemonName: UILabel!
    @IBOutlet weak var pokemonType: UILabel!
    @IBOutlet weak var pokemonAbility: UILabel!
    @IBOutlet weak var pokemonPower: UILabel!
    @IBOutlet weak var pokemonTypeImg: UIImageView!
    
    func config(with pokemon: Pokemon) {
        pokemonImg.image = UIImage(named: pokemon.image)
        pokemonName.text = "Name: \(pokemon.name)"
        pokemonPower.text = "Power: \(String(pokemon.power))"
        pokemonAbility.text = "Abitily: \(pokemon.ability)"
        pokemonTypeImg.image = UIImage(named: pokemon.type)
    }

}
