import Foundation

struct Character: Decodable {
    let name: String?
    let cardSet: String?
    let type: String?
    let rarity: String?
    let cost: Int?
    let faction: String?
    let attack: Int?
    let flavor: String?
    let health: Int?
    let text: String?
    let img: String?
}

//
//A imagem principal do cartão
//Nome
//Descrição "flavor"
//Descrição curta
//Set pertencente
//Tipo
//Facção
//Raridade
//Ataque
//Custo
//Health
