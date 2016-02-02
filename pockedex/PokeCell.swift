//
//  PokeCell.swift
//  pockedex
//
//  Created by Yordan on 2/2/16.
//  Copyright © 2016 Yordan. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    @IBOutlet weak var thumbImg: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    // store current object
    var pokemon: Pokemon!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        layer.cornerRadius = 5.0
        
    }
    
    // assign data
    func configureCell(pokemon: Pokemon) {
        self.pokemon = pokemon
        
        // assign and transform data
        nameLabel.text = self.pokemon.name.capitalizedString
        thumbImg.image = UIImage(named: "\(self.pokemon.pokedexId)")
    }
    
}
