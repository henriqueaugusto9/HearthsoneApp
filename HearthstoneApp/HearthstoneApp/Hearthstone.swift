import Foundation

// MARK: - WelcomeElement
struct HearthstoneElement: Codable {
    let cardID: String
    let dbfID: Int
    let name: String
    let cardSet: CardSet
    let type: TypeEnum
    let text: String?
    let playerClass: PlayerClass?
    let locale: Locale
    let rarity: Rarity?
    let health: Int?
    let mechanics: [Mechanic]?
    let faction: Faction?
    let elite: Bool?
    let cost, attack: Int?
    let race: Race?
    let img: String?
    let flavor, artist, spellSchool: String?
    let collectible: Bool?
    let imgGold: String?
    let durability: Int?
    let otherRaces: [Race]?
    let howToGetGold: String?

    enum CodingKeys: String, CodingKey {
        case cardID = "cardId"
        case dbfID = "dbfId"
        case name, cardSet, type, text, playerClass, locale, rarity, health, mechanics, faction, elite, cost, attack, race, img, flavor, artist, spellSchool, collectible, imgGold, durability, otherRaces, howToGetGold
    }
}

enum CardSet: String, Codable {
    case ashesOfOutland = "Ashes of Outland"
}

enum Faction: String, Codable {
    case horde = "Horde"
    case neutral = "Neutral"
}

enum Locale: String, Codable {
    case enUS = "enUS"
}

// MARK: - Mechanic
struct Mechanic: Codable {
    let name: String
}

enum Race: String, Codable {
    case beast = "Beast"
    case demon = "Demon"
    case dragon = "Dragon"
    case elemental = "Elemental"
    case mech = "Mech"
    case murloc = "Murloc"
    case naga = "Naga"
    case undead = "Undead"
}

enum PlayerClass: String, Codable {
    case demonHunter = "Demon Hunter"
    case druid = "Druid"
    case hunter = "Hunter"
    case mage = "Mage"
    case neutral = "Neutral"
    case paladin = "Paladin"
    case priest = "Priest"
    case rogue = "Rogue"
    case shaman = "Shaman"
    case warlock = "Warlock"
    case warrior = "Warrior"
}

enum Rarity: String, Codable {
    case common = "Common"
    case epic = "Epic"
    case free = "Free"
    case legendary = "Legendary"
    case rare = "Rare"
}

enum TypeEnum: String, Codable {
    case enchantment = "Enchantment"
    case hero = "Hero"
    case heroPower = "Hero Power"
    case minion = "Minion"
    case spell = "Spell"
    case weapon = "Weapon"
}
