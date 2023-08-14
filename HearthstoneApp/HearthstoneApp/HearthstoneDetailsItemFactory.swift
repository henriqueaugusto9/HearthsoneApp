import Foundation

enum HearthstoneDetailsItemFactory {
    static func build(data: AshesOfOutlandData) -> [String: String] {
        var items: [String: String] = [:]
        items.updateValue("image", forKey: data.img)
        items.updateValue("Nome", forKey: data.name)
        items.updateValue("Descrição flavor", forKey: data.flavor)
        items.updateValue("Descrição curta", forKey: data.text)
        items.updateValue("Set pertencente", forKey: data.cardSet)
        items.updateValue("Tipo", forKey: data.type)
        items.updateValue("Facção", forKey: data.faction)
        items.updateValue("Raridade", forKey: data.rarity)
        items.updateValue("Ataque", forKey: "\(data.attack)")
        items.updateValue("Custo", forKey: "\(data.cost)")
        items.updateValue("Health", forKey: "\(data.health)")
        
        return items
    }
}
