//   let Hearthstone = try Hearthstone(json)

import Foundation

// MARK: - WelcHearthstoneome
struct Hearthstone: Codable {
    let basic, classic, hallOfFame, missions: [AshesOfOutland]
    let demo, system, debug, promo: [JSONAny]
    let naxxramas, goblinsVsGnomes, blackrockMountain, theGrandTournament: [AshesOfOutland]
    let credits: [Credit]
    let heroSkins, tavernBrawl, theLeagueOfExplorers, whispersOfTheOldGods: [AshesOfOutland]
    let oneNightInKarazhan, meanStreetsOfGadgetzan, journeyToUnGoro, knightsOfTheFrozenThrone: [AshesOfOutland]
    let koboldsCatacombs, theWitchwood, theBoomsdayProject, rastakhanSRumble: [AshesOfOutland]
    let riseOfShadows, tavernsOfTime, saviorsOfUldum, descentOfDragons: [AshesOfOutland]
    let galakrondSAwakening, ashesOfOutland: [AshesOfOutland]
    let wildEvent: [JSONAny]
    let scholomanceAcademy, battlegrounds, demonHunterInitiate, madnessAtTheDarkmoonFaire: [AshesOfOutland]
    let forgedInTheBarrens, legacy, core, vanilla: [AshesOfOutland]
    let wailingCaverns: [JSONAny]
    let unitedInStormwind, mercenaries, fracturedInAlteracValley, voyageToTheSunkenCity: [AshesOfOutland]
    let unknown, murderAtCastleNathria, marchOfTheLichKing, pathOfArthas: [AshesOfOutland]
    let festivalOfLegends, titans: [AshesOfOutland]

    enum CodingKeys: String, CodingKey {
        case basic = "Basic"
        case classic = "Classic"
        case hallOfFame = "Hall of Fame"
        case missions = "Missions"
        case demo = "Demo"
        case system = "System"
        case debug = "Debug"
        case promo = "Promo"
        case naxxramas = "Naxxramas"
        case goblinsVsGnomes = "Goblins vs Gnomes"
        case blackrockMountain = "Blackrock Mountain"
        case theGrandTournament = "The Grand Tournament"
        case credits = "Credits"
        case heroSkins = "Hero Skins"
        case tavernBrawl = "Tavern Brawl"
        case theLeagueOfExplorers = "The League of Explorers"
        case whispersOfTheOldGods = "Whispers of the Old Gods"
        case oneNightInKarazhan = "One Night in Karazhan"
        case meanStreetsOfGadgetzan = "Mean Streets of Gadgetzan"
        case journeyToUnGoro = "Journey to Un'Goro"
        case knightsOfTheFrozenThrone = "Knights of the Frozen Throne"
        case koboldsCatacombs = "Kobolds & Catacombs"
        case theWitchwood = "The Witchwood"
        case theBoomsdayProject = "The Boomsday Project"
        case rastakhanSRumble = "Rastakhan's Rumble"
        case riseOfShadows = "Rise of Shadows"
        case tavernsOfTime = "Taverns of Time"
        case saviorsOfUldum = "Saviors of Uldum"
        case descentOfDragons = "Descent of Dragons"
        case galakrondSAwakening = "Galakrond's Awakening"
        case ashesOfOutland = "Ashes of Outland"
        case wildEvent = "Wild Event"
        case scholomanceAcademy = "Scholomance Academy"
        case battlegrounds = "Battlegrounds"
        case demonHunterInitiate = "Demon Hunter Initiate"
        case madnessAtTheDarkmoonFaire = "Madness At The Darkmoon Faire"
        case forgedInTheBarrens = "Forged in the Barrens"
        case legacy = "Legacy"
        case core = "Core"
        case vanilla = "Vanilla"
        case wailingCaverns = "Wailing Caverns"
        case unitedInStormwind = "United in Stormwind"
        case mercenaries = "Mercenaries"
        case fracturedInAlteracValley = "Fractured in Alterac Valley"
        case voyageToTheSunkenCity = "Voyage to the Sunken City"
        case unknown = "Unknown"
        case murderAtCastleNathria = "Murder at Castle Nathria"
        case marchOfTheLichKing = "March of the Lich King"
        case pathOfArthas = "Path of Arthas"
        case festivalOfLegends = "Festival of Legends"
        case titans = "TITANS"
    }
}

// MARK: Hearthstone convenience initializers and mutators

extension Hearthstone {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Hearthstone.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        basic: [AshesOfOutland]? = nil,
        classic: [AshesOfOutland]? = nil,
        hallOfFame: [AshesOfOutland]? = nil,
        missions: [AshesOfOutland]? = nil,
        demo: [JSONAny]? = nil,
        system: [JSONAny]? = nil,
        debug: [JSONAny]? = nil,
        promo: [JSONAny]? = nil,
        naxxramas: [AshesOfOutland]? = nil,
        goblinsVsGnomes: [AshesOfOutland]? = nil,
        blackrockMountain: [AshesOfOutland]? = nil,
        theGrandTournament: [AshesOfOutland]? = nil,
        credits: [Credit]? = nil,
        heroSkins: [AshesOfOutland]? = nil,
        tavernBrawl: [AshesOfOutland]? = nil,
        theLeagueOfExplorers: [AshesOfOutland]? = nil,
        whispersOfTheOldGods: [AshesOfOutland]? = nil,
        oneNightInKarazhan: [AshesOfOutland]? = nil,
        meanStreetsOfGadgetzan: [AshesOfOutland]? = nil,
        journeyToUnGoro: [AshesOfOutland]? = nil,
        knightsOfTheFrozenThrone: [AshesOfOutland]? = nil,
        koboldsCatacombs: [AshesOfOutland]? = nil,
        theWitchwood: [AshesOfOutland]? = nil,
        theBoomsdayProject: [AshesOfOutland]? = nil,
        rastakhanSRumble: [AshesOfOutland]? = nil,
        riseOfShadows: [AshesOfOutland]? = nil,
        tavernsOfTime: [AshesOfOutland]? = nil,
        saviorsOfUldum: [AshesOfOutland]? = nil,
        descentOfDragons: [AshesOfOutland]? = nil,
        galakrondSAwakening: [AshesOfOutland]? = nil,
        ashesOfOutland: [AshesOfOutland]? = nil,
        wildEvent: [JSONAny]? = nil,
        scholomanceAcademy: [AshesOfOutland]? = nil,
        battlegrounds: [AshesOfOutland]? = nil,
        demonHunterInitiate: [AshesOfOutland]? = nil,
        madnessAtTheDarkmoonFaire: [AshesOfOutland]? = nil,
        forgedInTheBarrens: [AshesOfOutland]? = nil,
        legacy: [AshesOfOutland]? = nil,
        core: [AshesOfOutland]? = nil,
        vanilla: [AshesOfOutland]? = nil,
        wailingCaverns: [JSONAny]? = nil,
        unitedInStormwind: [AshesOfOutland]? = nil,
        mercenaries: [AshesOfOutland]? = nil,
        fracturedInAlteracValley: [AshesOfOutland]? = nil,
        voyageToTheSunkenCity: [AshesOfOutland]? = nil,
        unknown: [AshesOfOutland]? = nil,
        murderAtCastleNathria: [AshesOfOutland]? = nil,
        marchOfTheLichKing: [AshesOfOutland]? = nil,
        pathOfArthas: [AshesOfOutland]? = nil,
        festivalOfLegends: [AshesOfOutland]? = nil,
        titans: [AshesOfOutland]? = nil
    ) -> Hearthstone {
        return Hearthstone(
            basic: basic ?? self.basic,
            classic: classic ?? self.classic,
            hallOfFame: hallOfFame ?? self.hallOfFame,
            missions: missions ?? self.missions,
            demo: demo ?? self.demo,
            system: system ?? self.system,
            debug: debug ?? self.debug,
            promo: promo ?? self.promo,
            naxxramas: naxxramas ?? self.naxxramas,
            goblinsVsGnomes: goblinsVsGnomes ?? self.goblinsVsGnomes,
            blackrockMountain: blackrockMountain ?? self.blackrockMountain,
            theGrandTournament: theGrandTournament ?? self.theGrandTournament,
            credits: credits ?? self.credits,
            heroSkins: heroSkins ?? self.heroSkins,
            tavernBrawl: tavernBrawl ?? self.tavernBrawl,
            theLeagueOfExplorers: theLeagueOfExplorers ?? self.theLeagueOfExplorers,
            whispersOfTheOldGods: whispersOfTheOldGods ?? self.whispersOfTheOldGods,
            oneNightInKarazhan: oneNightInKarazhan ?? self.oneNightInKarazhan,
            meanStreetsOfGadgetzan: meanStreetsOfGadgetzan ?? self.meanStreetsOfGadgetzan,
            journeyToUnGoro: journeyToUnGoro ?? self.journeyToUnGoro,
            knightsOfTheFrozenThrone: knightsOfTheFrozenThrone ?? self.knightsOfTheFrozenThrone,
            koboldsCatacombs: koboldsCatacombs ?? self.koboldsCatacombs,
            theWitchwood: theWitchwood ?? self.theWitchwood,
            theBoomsdayProject: theBoomsdayProject ?? self.theBoomsdayProject,
            rastakhanSRumble: rastakhanSRumble ?? self.rastakhanSRumble,
            riseOfShadows: riseOfShadows ?? self.riseOfShadows,
            tavernsOfTime: tavernsOfTime ?? self.tavernsOfTime,
            saviorsOfUldum: saviorsOfUldum ?? self.saviorsOfUldum,
            descentOfDragons: descentOfDragons ?? self.descentOfDragons,
            galakrondSAwakening: galakrondSAwakening ?? self.galakrondSAwakening,
            ashesOfOutland: ashesOfOutland ?? self.ashesOfOutland,
            wildEvent: wildEvent ?? self.wildEvent,
            scholomanceAcademy: scholomanceAcademy ?? self.scholomanceAcademy,
            battlegrounds: battlegrounds ?? self.battlegrounds,
            demonHunterInitiate: demonHunterInitiate ?? self.demonHunterInitiate,
            madnessAtTheDarkmoonFaire: madnessAtTheDarkmoonFaire ?? self.madnessAtTheDarkmoonFaire,
            forgedInTheBarrens: forgedInTheBarrens ?? self.forgedInTheBarrens,
            legacy: legacy ?? self.legacy,
            core: core ?? self.core,
            vanilla: vanilla ?? self.vanilla,
            wailingCaverns: wailingCaverns ?? self.wailingCaverns,
            unitedInStormwind: unitedInStormwind ?? self.unitedInStormwind,
            mercenaries: mercenaries ?? self.mercenaries,
            fracturedInAlteracValley: fracturedInAlteracValley ?? self.fracturedInAlteracValley,
            voyageToTheSunkenCity: voyageToTheSunkenCity ?? self.voyageToTheSunkenCity,
            unknown: unknown ?? self.unknown,
            murderAtCastleNathria: murderAtCastleNathria ?? self.murderAtCastleNathria,
            marchOfTheLichKing: marchOfTheLichKing ?? self.marchOfTheLichKing,
            pathOfArthas: pathOfArthas ?? self.pathOfArthas,
            festivalOfLegends: festivalOfLegends ?? self.festivalOfLegends,
            titans: titans ?? self.titans
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - AshesOfOutland
struct AshesOfOutland: Codable {
    let cardID: String
    let dbfID: Int
    let name: String
    let cardSet: AshesOfOutlandCardSet
    let type: TypeEnum?
    let text: String?
    let playerClass: Class?
    let locale: Locale
    let rarity: Rarity?
    let health: Int?
    let mechanics: [Mechanic]?
    let faction: Faction?
    let elite: Bool?
    let cost, attack: Int?
    let race: Race?
    let img: String?
    let flavor, artist: String?
    let spellSchool: SpellSchool?
    let collectible: Bool?
    let imgGold: String?
    let durability: Int?
    let otherRaces: [Race]?
    let howToGetGold, armor, howToGet: String?
    let runeCost: RuneCost?
    let howToGetDiamond, howToGetSignature, multiClassGroup: String?
    let classes: [Class]?

    enum CodingKeys: String, CodingKey {
        case cardID = "cardId"
        case dbfID = "dbfId"
        case name, cardSet, type, text, playerClass, locale, rarity, health, mechanics, faction, elite, cost, attack, race, img, flavor, artist, spellSchool, collectible, imgGold, durability, otherRaces, howToGetGold, armor, howToGet, runeCost, howToGetDiamond, howToGetSignature, multiClassGroup, classes
    }
}

// MARK: AshesOfOutland convenience initializers and mutators

extension AshesOfOutland {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(AshesOfOutland.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        cardID: String? = nil,
        dbfID: Int? = nil,
        name: String? = nil,
        cardSet: AshesOfOutlandCardSet? = nil,
        type: TypeEnum?? = nil,
        text: String?? = nil,
        playerClass: Class?? = nil,
        locale: Locale? = nil,
        rarity: Rarity?? = nil,
        health: Int?? = nil,
        mechanics: [Mechanic]?? = nil,
        faction: Faction?? = nil,
        elite: Bool?? = nil,
        cost: Int?? = nil,
        attack: Int?? = nil,
        race: Race?? = nil,
        img: String?? = nil,
        flavor: String?? = nil,
        artist: String?? = nil,
        spellSchool: SpellSchool?? = nil,
        collectible: Bool?? = nil,
        imgGold: String?? = nil,
        durability: Int?? = nil,
        otherRaces: [Race]?? = nil,
        howToGetGold: String?? = nil,
        armor: String?? = nil,
        howToGet: String?? = nil,
        runeCost: RuneCost?? = nil,
        howToGetDiamond: String?? = nil,
        howToGetSignature: String?? = nil,
        multiClassGroup: String?? = nil,
        classes: [Class]?? = nil
    ) -> AshesOfOutland {
        return AshesOfOutland(
            cardID: cardID ?? self.cardID,
            dbfID: dbfID ?? self.dbfID,
            name: name ?? self.name,
            cardSet: cardSet ?? self.cardSet,
            type: type ?? self.type,
            text: text ?? self.text,
            playerClass: playerClass ?? self.playerClass,
            locale: locale ?? self.locale,
            rarity: rarity ?? self.rarity,
            health: health ?? self.health,
            mechanics: mechanics ?? self.mechanics,
            faction: faction ?? self.faction,
            elite: elite ?? self.elite,
            cost: cost ?? self.cost,
            attack: attack ?? self.attack,
            race: race ?? self.race,
            img: img ?? self.img,
            flavor: flavor ?? self.flavor,
            artist: artist ?? self.artist,
            spellSchool: spellSchool ?? self.spellSchool,
            collectible: collectible ?? self.collectible,
            imgGold: imgGold ?? self.imgGold,
            durability: durability ?? self.durability,
            otherRaces: otherRaces ?? self.otherRaces,
            howToGetGold: howToGetGold ?? self.howToGetGold,
            armor: armor ?? self.armor,
            howToGet: howToGet ?? self.howToGet,
            runeCost: runeCost ?? self.runeCost,
            howToGetDiamond: howToGetDiamond ?? self.howToGetDiamond,
            howToGetSignature: howToGetSignature ?? self.howToGetSignature,
            multiClassGroup: multiClassGroup ?? self.multiClassGroup,
            classes: classes ?? self.classes
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum AshesOfOutlandCardSet: String, Codable {
    case ashesOfOutland = "Ashes of Outland"
    case basic = "Basic"
    case battlegrounds = "Battlegrounds"
    case blackrockMountain = "Blackrock Mountain"
    case classic = "Classic"
    case core = "Core"
    case demonHunterInitiate = "Demon Hunter Initiate"
    case descentOfDragons = "Descent of Dragons"
    case festivalOfLegends = "Festival of Legends"
    case forgedInTheBarrens = "Forged in the Barrens"
    case fracturedInAlteracValley = "Fractured in Alterac Valley"
    case galakrondSAwakening = "Galakrond's Awakening"
    case goblinsVsGnomes = "Goblins vs Gnomes"
    case hallOfFame = "Hall of Fame"
    case heroSkins = "Hero Skins"
    case journeyToUnGoro = "Journey to Un'Goro"
    case knightsOfTheFrozenThrone = "Knights of the Frozen Throne"
    case koboldsCatacombs = "Kobolds & Catacombs"
    case legacy = "Legacy"
    case madnessAtTheDarkmoonFaire = "Madness At The Darkmoon Faire"
    case marchOfTheLichKing = "March of the Lich King"
    case meanStreetsOfGadgetzan = "Mean Streets of Gadgetzan"
    case mercenaries = "Mercenaries"
    case missions = "Missions"
    case murderAtCastleNathria = "Murder at Castle Nathria"
    case naxxramas = "Naxxramas"
    case oneNightInKarazhan = "One Night in Karazhan"
    case pathOfArthas = "Path of Arthas"
    case rastakhanSRumble = "Rastakhan's Rumble"
    case riseOfShadows = "Rise of Shadows"
    case saviorsOfUldum = "Saviors of Uldum"
    case scholomanceAcademy = "Scholomance Academy"
    case tavernBrawl = "Tavern Brawl"
    case tavernsOfTime = "Taverns of Time"
    case theBoomsdayProject = "The Boomsday Project"
    case theGrandTournament = "The Grand Tournament"
    case theLeagueOfExplorers = "The League of Explorers"
    case theWitchwood = "The Witchwood"
    case titans = "TITANS"
    case unitedInStormwind = "United in Stormwind"
    case unknown = "Unknown"
    case vanilla = "Vanilla"
    case voyageToTheSunkenCity = "Voyage to the Sunken City"
    case whispersOfTheOldGods = "Whispers of the Old Gods"
}

enum Class: String, Codable {
    case deathKnight = "Death Knight"
    case demonHunter = "Demon Hunter"
    case dream = "Dream"
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
    case whizbang = "Whizbang"
}

enum Faction: String, Codable {
    case alliance = "Alliance"
    case horde = "Horde"
    case neutral = "Neutral"
}

enum Locale: String, Codable {
    case enUS = "enUS"
}

// MARK: - Mechanic
struct Mechanic: Codable {
    let name: Name
}

// MARK: Mechanic convenience initializers and mutators

extension Mechanic {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Mechanic.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        name: Name? = nil
    ) -> Mechanic {
        return Mechanic(
            name: name ?? self.name
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum Name: String, Codable {
    case adapt = "Adapt"
    case adjacentBuff = "AdjacentBuff"
    case affectedBySpellPower = "AffectedBySpellPower"
    case aiMustPlay = "AIMustPlay"
    case aura = "Aura"
    case avengeX = "Avenge (X)"
    case battlecry = "Battlecry"
    case bloodGem = "Blood Gem"
    case castsWhenDrawn = "Casts When Drawn"
    case charge = "Charge"
    case colossalX = "Colossal +X"
    case combo = "Combo"
    case corpse = "Corpse"
    case corrupt = "Corrupt"
    case deathrattle = "Deathrattle"
    case discover = "Discover"
    case divineShield = "Divine Shield"
    case dormant = "Dormant"
    case dredge = "Dredge"
    case echo = "Echo"
    case finale = "Finale"
    case forge = "Forge"
    case freeze = "Freeze"
    case frenzy = "Frenzy"
    case honorableKill = "Honorable Kill"
    case immuneToSpellpower = "ImmuneToSpellpower"
    case infuse = "Infuse"
    case inspire = "Inspire"
    case invisibleDeathrattle = "InvisibleDeathrattle"
    case invoke = "Invoke"
    case jadeGolem = "Jade Golem"
    case lifesteal = "Lifesteal"
    case magnetic = "Magnetic"
    case manathirstX = "Manathirst (X)"
    case morph = "Morph"
    case natureSpellDamage = "Nature Spell Damage"
    case oneTurnEffect = "OneTurnEffect"
    case outcast = "Outcast"
    case overheal = "Overheal"
    case overkill = "Overkill"
    case overload = "Overload"
    case poisonous = "Poisonous"
    case quest = "Quest"
    case questline = "Questline"
    case reborn = "Reborn"
    case recruit = "Recruit"
    case rush = "Rush"
    case secret = "Secret"
    case sidequest = "Sidequest"
    case silence = "Silence"
    case spellDamage = "Spell Damage"
    case spellburst = "Spellburst"
    case spellcraft = "Spellcraft"
    case stealth = "Stealth"
    case summoned = "Summoned"
    case taunt = "Taunt"
    case titan = "Titan"
    case tradeable = "Tradeable"
    case twinspell = "Twinspell"
    case venomous = "Venomous"
    case windfury = "Windfury"
}

enum Race: String, Codable {
    case all = "All"
    case beast = "Beast"
    case demon = "Demon"
    case dragon = "Dragon"
    case elemental = "Elemental"
    case mech = "Mech"
    case murloc = "Murloc"
    case naga = "Naga"
    case orc = "Orc"
    case pirate = "Pirate"
    case quilboar = "Quilboar"
    case totem = "Totem"
    case undead = "Undead"
}

enum Rarity: String, Codable {
    case common = "Common"
    case epic = "Epic"
    case free = "Free"
    case legendary = "Legendary"
    case rare = "Rare"
}

// MARK: - RuneCost
struct RuneCost: Codable {
    let blood, frost, unholy: Int
}

// MARK: RuneCost convenience initializers and mutators

extension RuneCost {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(RuneCost.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        blood: Int? = nil,
        frost: Int? = nil,
        unholy: Int? = nil
    ) -> RuneCost {
        return RuneCost(
            blood: blood ?? self.blood,
            frost: frost ?? self.frost,
            unholy: unholy ?? self.unholy
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum SpellSchool: String, Codable {
    case arcane = "Arcane"
    case fel = "Fel"
    case fire = "Fire"
    case frost = "Frost"
    case holy = "Holy"
    case nature = "Nature"
    case shadow = "Shadow"
}

enum TypeEnum: String, Codable {
    case enchantment = "Enchantment"
    case hero = "Hero"
    case heroPower = "Hero Power"
    case location = "Location"
    case minion = "Minion"
    case spell = "Spell"
    case weapon = "Weapon"
}

// MARK: - Credit
struct Credit: Codable {
    let cardID: String
    let dbfID: Int
    let name: String
    let cardSet: CreditCardSet
    let type: TypeEnum
    let rarity: Rarity
    let cost, attack: Int
    let health: Int?
    let text: String
    let elite: Bool
    let playerClass: Class
    let locale: Locale
    let race: Race?
    let mechanics: [Mechanic]?

    enum CodingKeys: String, CodingKey {
        case cardID = "cardId"
        case dbfID = "dbfId"
        case name, cardSet, type, rarity, cost, attack, health, text, elite, playerClass, locale, race, mechanics
    }
}

// MARK: Credit convenience initializers and mutators

extension Credit {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Credit.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        cardID: String? = nil,
        dbfID: Int? = nil,
        name: String? = nil,
        cardSet: CreditCardSet? = nil,
        type: TypeEnum? = nil,
        rarity: Rarity? = nil,
        cost: Int? = nil,
        attack: Int? = nil,
        health: Int?? = nil,
        text: String? = nil,
        elite: Bool? = nil,
        playerClass: Class? = nil,
        locale: Locale? = nil,
        race: Race?? = nil,
        mechanics: [Mechanic]?? = nil
    ) -> Credit {
        return Credit(
            cardID: cardID ?? self.cardID,
            dbfID: dbfID ?? self.dbfID,
            name: name ?? self.name,
            cardSet: cardSet ?? self.cardSet,
            type: type ?? self.type,
            rarity: rarity ?? self.rarity,
            cost: cost ?? self.cost,
            attack: attack ?? self.attack,
            health: health ?? self.health,
            text: text ?? self.text,
            elite: elite ?? self.elite,
            playerClass: playerClass ?? self.playerClass,
            locale: locale ?? self.locale,
            race: race ?? self.race,
            mechanics: mechanics ?? self.mechanics
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum CreditCardSet: String, Codable {
    case credits = "Credits"
}

// MARK: - Helper functions for creating encoders and decoders

func newJSONDecoder() -> JSONDecoder {
    let decoder = JSONDecoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        decoder.dateDecodingStrategy = .iso8601
    }
    return decoder
}

func newJSONEncoder() -> JSONEncoder {
    let encoder = JSONEncoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        encoder.dateEncodingStrategy = .iso8601
    }
    return encoder
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public func hash(into hasher: inout Hasher) {
        // No-op
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}

class JSONCodingKey: CodingKey {
    let key: String

    required init?(intValue: Int) {
        return nil
    }

    required init?(stringValue: String) {
        key = stringValue
    }

    var intValue: Int? {
        return nil
    }

    var stringValue: String {
        return key
    }
}

class JSONAny: Codable {

    let value: Any

    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
        let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
        return DecodingError.typeMismatch(JSONAny.self, context)
    }

    static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
        let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
        return EncodingError.invalidValue(value, context)
    }

    static func decode(from container: SingleValueDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if container.decodeNil() {
            return JSONNull()
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if let value = try? container.decodeNil() {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer() {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
        if let value = try? container.decode(Bool.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Int64.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Double.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(String.self, forKey: key) {
            return value
        }
        if let value = try? container.decodeNil(forKey: key) {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer(forKey: key) {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
        var arr: [Any] = []
        while !container.isAtEnd {
            let value = try decode(from: &container)
            arr.append(value)
        }
        return arr
    }

    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
        var dict = [String: Any]()
        for key in container.allKeys {
            let value = try decode(from: &container, forKey: key)
            dict[key.stringValue] = value
        }
        return dict
    }

    static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
        for value in array {
            if let value = value as? Bool {
                try container.encode(value)
            } else if let value = value as? Int64 {
                try container.encode(value)
            } else if let value = value as? Double {
                try container.encode(value)
            } else if let value = value as? String {
                try container.encode(value)
            } else if value is JSONNull {
                try container.encodeNil()
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer()
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
        for (key, value) in dictionary {
            let key = JSONCodingKey(stringValue: key)!
            if let value = value as? Bool {
                try container.encode(value, forKey: key)
            } else if let value = value as? Int64 {
                try container.encode(value, forKey: key)
            } else if let value = value as? Double {
                try container.encode(value, forKey: key)
            } else if let value = value as? String {
                try container.encode(value, forKey: key)
            } else if value is JSONNull {
                try container.encodeNil(forKey: key)
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer(forKey: key)
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
        if let value = value as? Bool {
            try container.encode(value)
        } else if let value = value as? Int64 {
            try container.encode(value)
        } else if let value = value as? Double {
            try container.encode(value)
        } else if let value = value as? String {
            try container.encode(value)
        } else if value is JSONNull {
            try container.encodeNil()
        } else {
            throw encodingError(forValue: value, codingPath: container.codingPath)
        }
    }

    public required init(from decoder: Decoder) throws {
        if var arrayContainer = try? decoder.unkeyedContainer() {
            self.value = try JSONAny.decodeArray(from: &arrayContainer)
        } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
            self.value = try JSONAny.decodeDictionary(from: &container)
        } else {
            let container = try decoder.singleValueContainer()
            self.value = try JSONAny.decode(from: container)
        }
    }

    public func encode(to encoder: Encoder) throws {
        if let arr = self.value as? [Any] {
            var container = encoder.unkeyedContainer()
            try JSONAny.encode(to: &container, array: arr)
        } else if let dict = self.value as? [String: Any] {
            var container = encoder.container(keyedBy: JSONCodingKey.self)
            try JSONAny.encode(to: &container, dictionary: dict)
        } else {
            var container = encoder.singleValueContainer()
            try JSONAny.encode(to: &container, value: self.value)
        }
    }
}
