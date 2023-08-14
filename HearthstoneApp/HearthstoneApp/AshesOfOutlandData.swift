import Foundation

struct AshesOfOutlandData {
    let name: String
    let cardSet: String
    let type: String
    let rarity: String
    let cost: Int
    let faction: String
    let attack: Int
    let flavor: String
    let health: Int
    let text: String
    let playerClass: String
    let img: String
    
    init(name: String, cardSet: String, type: String, rarity: String, cost: Int, faction: String, attack: Int, flavor: String, health: Int, text: String, playerClass: String, img: String) {
        self.name = name
        self.cardSet = cardSet
        self.type = type
        self.rarity = rarity
        self.cost = cost
        self.faction = faction
        self.attack = attack
        self.flavor = flavor
        self.health = health
        self.text = text
        self.playerClass = playerClass
        self.img = img
    }
    
    static func map(from: HearthstoneElement) -> AshesOfOutlandData {
        return AshesOfOutlandData(name: from.name,
                                  cardSet: from.cardSet.rawValue,
                                  type: from.type.rawValue,
                                  rarity: from.rarity?.rawValue ?? "",
                                  cost: from.cost ?? 0,
                                  faction: from.faction?.rawValue ?? "",
                                  attack: from.attack ?? 0,
                                  flavor: from.flavor ?? "",
                                  health: from.health ?? 0,
                                  text: from.text ?? "",
                                  playerClass: from.playerClass?.rawValue ?? "",
                                  img: from.img ?? "")
    }
}
