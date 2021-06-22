//
//  PokemonTableViewCell.swift
//  MarquetPierre_iOS_Eva2
//
//  Created by Student05 on 22/06/2021.
//

import UIKit

class PokemonTableViewCell: UITableViewCell {
    
    @IBOutlet var pokemonView : UITableView!
    @IBOutlet var pokemonImage: UIImageView!
    @IBOutlet var pokemonName: UILabel!
    
    
    var pokemons: [Pokemon] = [Pokemon]()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        setupData()
        
        pokemonView.register(UINib(nibName: "PokemonTableViewCell", bundle: nil), forCellReuseIdentifier: "PokemonTableViewCell")
        
       // pokemonView.dataSource = self
       // pokemonView.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCell(pokemon: Pokemon){
        
       // pokemonName.text
    }
    
    private func setupData(){
        pokemons.append(Pokemon(name: "Bulbizarre", types: .grass, imageName: "Bulbizarre", generation: 1, pokedexNumber: 1, height: 30))
        pokemons.append(Pokemon(name: "Herbizarre", types: .grass, imageName: "Herbizarre", generation: 1, pokedexNumber: 2, height: 65))
        pokemons.append(Pokemon(name: "Florizarre", types: .grass, imageName: "Florizarre", generation: 1, pokedexNumber: 3, height: 140))
        pokemons.append(Pokemon(name: "Salamèche", types: .fire, imageName: "Salameche", generation: 1, pokedexNumber: 4, height: 39))
        pokemons.append(Pokemon(name: "Reptincelle", types: .fire, imageName: "Reptincelle", generation: 1, pokedexNumber: 5, height: 80))
        pokemons.append(Pokemon(name: "Dracofeu", types: .fire, imageName: "Dracofeu", generation: 1, pokedexNumber: 6, height: 170))
    

    }
    
    
}

extension PokemonTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pokemons.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let pokemonCell = collectionView.dequeueReusableCell(withReuseIdentifier: "PokemonTableViewCell", for: indexPath) as! PokemonTableViewCell
        
        
        pokemonCell.setupCell(pokemon: pokemons[indexPath.row])
    }
}
