//
//  Musica.swift
//  DesafioMusica
//
//  Created by Student on 17/10/22.
//  Copyright © 2022 Student. All rights reserved.
//

import Foundation

class Musica {
    let nomeMusica: String
    let nomeArtista: String
    let nomeAlbum: String
    let fotoAlbum: String
    let fotoArtista: String
    let descricaoArtista: String
    let biografiaArtista: String
    
    init(nomeMusica: String, nomeArtista: String, nomeAlbum: String, fotoAlbum: String, fotoArtista: String, descricaoArtista: String, biografiaArtista: String){

        self.nomeMusica = nomeMusica
        self.nomeArtista = nomeArtista
        self.nomeAlbum = nomeAlbum
        self.fotoAlbum = fotoAlbum
        self.fotoArtista = fotoArtista
        self.descricaoArtista = descricaoArtista
        self.biografiaArtista = biografiaArtista
        
    }
    
}

class MusicaDAO{
    
    static func getList() -> [Musica]{
        
        return [
            Musica(nomeMusica: "Time", nomeArtista: "Hans Zimmer", nomeAlbum: "Inception", fotoAlbum: "Inception", fotoArtista: "hanszimmer", descricaoArtista: "Compositor alemão conhecido pela trilha sonora de diversos filmes", biografiaArtista: "Hans Zimmer has scored more than 200 projects across all mediums, which, combined, have grossed more than 28 billion dollars at the worldwide box office. Zimmer has been honored with an Academy Award, two Golden Globes, three Grammys, an American Music Award and a Tony Award "),
            Musica(nomeMusica: "Lady Writer", nomeArtista: "Dire Straits", nomeAlbum: "Communiqué", fotoAlbum: "communique", fotoArtista: "direstraits", descricaoArtista: "", biografiaArtista: ""),
            Musica(nomeMusica: "Musica A", nomeArtista: "Artista A", nomeAlbum: "", fotoAlbum: "", fotoArtista: "", descricaoArtista: "", biografiaArtista: ""),
            Musica(nomeMusica: "Musica B", nomeArtista: "Artista B", nomeAlbum: "", fotoAlbum: "", fotoArtista: "", descricaoArtista: "", biografiaArtista: ""),
            Musica(nomeMusica: "Musica C", nomeArtista: "Artista C", nomeAlbum: "", fotoAlbum: "", fotoArtista: "", descricaoArtista: "", biografiaArtista: ""),
            Musica(nomeMusica: "Musica D", nomeArtista: "Artista C", nomeAlbum: "", fotoAlbum: "", fotoArtista: "", descricaoArtista: "", biografiaArtista: "")
        ]
        
    }
    
    
}
