//
//  ViewModel.swift
//  iOSWordle
//
//  Created by Ignacio Bogarin on 24/06/22.
//

import Foundation

let myData = ["abaco", "abeja", "abeto", "abono", "abrir", "abuso", "acabo", "acata", "achis", "acido", "actuo", "acuse", "adamo", "adios", "adule", "adulo", "aereo", "afila", "afina", "aforo", "agape", "agata", "agita", "agota", "agraz", "agria", "agudo", "aguzo", "ahogo", "ahora", "airea", "aisla", "ajeno", "alamo", "album", "aleli", "aleta", "alexa", "alfil", "algun", "alias", "aliño", "almas", "almos", "aloes", "alpes", "altar", "altas", "altos", "aludi", "aludo", "aluza", "alzar", "alzas", "alzos", "amaba", "amago", "amaña", "amasa", "ambas", "ambos", "ameba", "amena", "amigo", "anais", "anana", "ancas", "ancho", "ancla", "andan", "andar", "anden", "andes", "anexa", "anexo", "angel", "anglo", "anida", "anime", "animo", "anodo", "ansia", "antes", "antia", "antro", "anual", "anuda", "anudo", "anulo", "añejo", "aorta", "aovar", "apaga", "apago", "apaño", "apego", "apelo", "apice", "apilo", "apios", "apodo", "apolo", "apoya", "apoyo", "apure", "apuro", "aquel", "arabe", "araña", "arbol", "arcas", "arcos", "ardan", "ardor", "arena", "arepa", "argel", "armar", "aroma", "arroz", "artes", "ascua", "asear", "asoma", "astro", "asumo", "atajo", "ataud", "atlas", "audaz", "babas", "babel", "bacan", "bacas", "bache", "badea", "badil", "bafle", "bagre", "bahia", "baile", "bajar", "bajio", "bajos", "balad", "balar", "balas", "baldo", "balin", "balon", "balsa", "balto", "bamba", "bambu", "banal", "bantu", "banyo", "banzo", "bañar", "bañil", "baños", "barba", "barca", "bardo", "baria", "baron", "barra", "barre", "barro", "barza", "basar", "bases", "basta", "batey", "batik", "beata", "beber", "becas", "beige", "belga", "bella", "bello", "bemba", "bemol", "berro", "berta", "besar", "besos", "betel", "betun", "biche", "bicho", "bidon", "biela", "bigas", "bilis", "bizco", "blues", "blusa", "bofar", "bohio", "bollo", "bolsa", "bolso", "bomba", "bombo", "bongo", "borda", "botar", "boxeo", "brama", "brazo", "breva", "breve", "brisa", "broma", "brote", "brujo", "bucal", "bucle", "budin", "bueno", "bufon", "bujia", "burdo", "burra", "burro", "cabal", "cable", "cabos", "cabra", "cacao", "cactu", "cadiz", "caias", "calar", "calas", "calce", "calco", "caldo", "calma", "calor", "calvo", "calza", "campo", "canal", "canas", "canes", "caney", "canje", "canoa", "canon", "cansa", "canto", "cañas", "cañon", "caños", "caobo", "capaz", "caras", "caray", "cardo", "carey", "cargo", "carie", "caros", "carpa", "carro", "carta", "casar", "casco", "caspa", "casto", "catre", "cauca", "causa", "cauto", "cavar", "cazar", "cebar", "cebra", "ceder", "cedro", "ceibo", "cejas", "celar", "celda", "celia", "cenar", "cenit", "censo", "cerca", "cerco", "cerdo", "cesar", "cesto", "cetro", "chapa", "checo", "chico", "china", "chips", "chivo", "choza", "chuzo", "ciclo", "cidra", "ciego", "cifra", "cinco", "cinta", "circo", "civil", "clama", "clavo", "clero", "clima", "coati", "cobra", "coche", "colmo", "combo", "comer", "comic", "congo", "coqui", "corua", "corzo", "costa", "costo", "coxis", "croar", "cromo", "cruce", "crudo", "cuaje", "cueva", "curva", "cutis", "cuzco", "dador", "dados", "dagas", "dalia", "damas", "dando", "danes", "danta", "danza", "dañar", "daños", "dardo", "daria", "dario", "darse", "datil", "datos", "david", "deber", "debut", "decai", "decir", "dedal", "dedos", "dejar", "delta", "denso", "dento", "desde", "deseo", "deuda", "diada", "diana", "dicha", "dicho", "dicta", "diera", "dieta", "digno", "dijes", "dimas", "diodo", "diosa", "disco", "divan", "dobla", "doble", "docil", "dogma", "doler", "dolor", "domar", "donar", "donde", "dones", "dopar", "dorar", "dormi", "dorso", "dosis", "dotar", "drago", "drama", "dreno", "ducha", "ducto", "dudar", "duelo", "dueña", "dulce", "duque", "durar", "ebano", "ebrio", "echar", "ecuas", "edema", "edipo", "edito", "educa", "efuso", "egeas", "egida", "ejion", "ejote", "eleva", "elfos", "elige", "elijo", "elite", "ellas", "elles", "ellos", "elote", "eluda", "elude", "emiti", "emula", "enano", "encia", "enema", "enojo", "entre", "envia", "eolio", "epica", "epoca", "equis", "ergos", "ergui", "erigi", "eriza", "erizo", "errar", "error", "espia", "esqui", "estar", "ester", "estoy", "etano", "etica", "etimo", "etnia", "evado", "evito", "evoco", "exige", "exito", "exodo", "facha", "facil", "facto", "faena", "fagot", "fajar", "falaz", "falco", "falda", "falla", "falso", "falta", "fango", "farol", "farra", "farsa", "fasto", "fatal", "fauna", "favor", "fecha", "feliz", "felpa", "femur", "fenix", "feria", "feroz", "ferry", "feudo", "fiare", "fibra", "ficha", "fideo", "fiera", "fijar", "filas", "filme", "final", "finca", "fines", "fingi", "firma", "flaco", "flama", "flash", "fleco", "flema", "flojo", "flora", "flota", "fluia", "flujo", "fobia", "fogon", "folio", "force", "forja", "forma", "fosil", "foton", "frank", "frase", "freir", "freno", "fresa", "friso", "fruta", "fuego", "fuera", "funda", "furor", "fusil", "fusta", "gaban", "gafas", "gaita", "gajos", "galan", "galas", "gales", "gallo", "galon", "ganar", "ganso", "garra", "garza", "gases", "gasto", "gatea", "gemas", "gemir", "genio", "gente", "gesta", "girar", "giros", "glase", "gleba", "globo", "gnomo", "golpe", "gordo", "gorro", "gotas", "goteo", "gozar", "grabe", "grada", "grado", "grafo", "grama", "gramo", "grano", "grapa", "grasa", "grato", "grave", "greca", "grial", "grifo", "grill", "grima", "gripe", "grito", "grumo", "gruñe", "grupo", "gruta", "guapa", "guayo", "gueto", "guiar", "guiño", "gusto", "habas", "haber", "habil", "habla", "hacer", "hacha", "hacia", "halar", "halla", "hampa", "harto", "hasta", "hazlo", "hebra", "heces", "hecho", "hedor", "helar", "helio", "henar", "herir", "heroe", "herro", "hervi", "hiato", "hidra", "hielo", "hiena", "higos", "hilar", "himno", "hindi", "hindu", "hiper", "hobby", "hogar", "hojas", "hondo", "hongo", "honro", "horas", "horno", "hotel", "hueco", "huele", "hueso", "huevo", "huida", "humor", "hurto", "ibero", "ibiza", "icono", "ideal", "ideas", "idolo", "igneo", "igual", "ilesa", "iluso", "imana", "imita", "impar", "impio", "infla", "infra", "ingle", "insto", "inter", "iones", "irias", "istmo", "italo", "izara", "izare", "izote", "jabon", "jacob", "jacta", "jadea", "jagua", "jaiba", "jalea", "jalon", "jamar", "james", "jaque", "jarca", "jarra", "jarro", "jauda", "jaula", "javas", "jayan", "jedar", "jefas", "jerez", "jesus", "jolin", "jopar", "josue", "joven", "joyas", "juana", "judea", "judio", "juega", "juego", "jugar", "julio", "jumar", "junco", "junio", "junta", "jurar", "justo", "juzga", "kanji", "kappa", "karma", "kayak", "kenia", "kilos", "koala", "kurda", "kurdo", "labio", "labor", "labro", "lacia", "lacta", "ladea", "lados", "ladra", "laico", "lamer", "lanas", "lance", "lando", "lanza", "lanzo", "lapiz", "lapos", "lapso", "lares", "largo", "larva", "latas", "latex", "latir", "laton", "laura", "lavar", "laxos", "lazar", "lease", "leche", "legal", "legar", "legia", "lejos", "lemur", "lento", "leñar", "leños", "leona", "lepra", "letal", "leuda", "levar", "leves", "leyes", "liada", "liana", "liber", "libia", "libra", "libre", "libro", "liceo", "licor", "licua", "lider", "lidio", "ligar", "light", "lijar", "limas", "limon", "lince", "linda", "linea", "linio", "lirio", "lista", "listo", "litro", "llaga", "llama", "llave", "llego", "llena", "lleve", "llora", "local", "logos", "logro", "lucas", "lucha", "lucia", "lucid", "lucio", "lucro", "luego", "lugar", "lunar", "lunes", "lupus", "luxar", "luzco", "macao", "madre", "mafia", "magia", "magma", "magna", "magra", "majal", "malla", "malos", "mamas", "mamas", "mamey", "mamon", "mamut", "manar", "manda", "mando", "manga", "mango", "mania", "manos", "mansa", "manso", "manta", "mañas", "maori", "mapeo", "marca", "marco", "marea", "maria", "mario", "marte", "marzo", "matar", "matiz", "mauro", "mecer", "mecha", "media", "medio", "medir", "megas", "melon", "memes", "menea", "menos", "menso", "menta", "mente", "merco", "merey", "metal", "metas", "meter", "metro", "micro", "minar", "mioma", "miope", "mirar", "mirlo", "misil", "mismo", "mixto", "modem", "mofar", "mohin", "molar", "molde", "momia", "monja", "monje", "moral", "morir", "morsa", "mosca", "mosco", "moscu", "motin", "mover", "mucho", "mueca", "muela", "mujer", "mundo", "mutar", "mutuo", "nabos", "nacar", "nacer", "nadar", "nadia", "nadie", "nadir", "nafta", "naipe", "nardo", "nariz", "narra", "nasal", "natio", "naval", "naves", "nebli", "necio", "negar", "negro", "nepal", "nevar", "nexos", "nicho", "nicol", "niega", "nieta", "nieto", "nieve", "nilon", "ninfo", "niñez", "nitro", "nivel", "nobel", "noche", "nodos", "nogal", "norma", "norte", "notar", "nubes", "nubia", "nubil", "nuble", "nuero", "nueve", "nuevo", "ñajos", "ñames", "ñandu", "ñango", "ñapas", "ñatas", "ñonga", "ñongo", "ñoñez", "ñoños", "ñoras", "obeso", "obito", "oblea", "oboes", "obrar", "obten", "obvio", "ocaso", "octal", "ocumo", "ocupa", "odiar", "odres", "oeste", "ohmio", "oible", "oidos", "ojala", "ojear", "ojera", "okapi", "olivo", "omega", "omino", "omiso", "omita", "ondas", "ondea", "onoto", "opaco", "opera", "opera", "opino", "opone", "optar", "orcos", "orden", "orear", "oreja", "orfos", "orina", "orion", "oruga", "osada", "oscar", "ostia", "ostra", "otoño", "otras", "ovalo", "oveja", "ovino", "ovulo", "oxido", "ozono", "pablo", "pacto", "padre", "pagar", "paila", "pajar", "palca", "palco", "palma", "panal", "panda", "panel", "papal", "papas", "papas", "papel", "papua", "parar", "pardo", "pared", "parir", "parla", "parte", "parto", "parva", "pasar", "pasas", "paseo", "pasmo", "pasos", "pasto", "patas", "patin", "patio", "paula", "pausa", "pauta", "peaje", "pecar", "pecas", "pecho", "pedal", "pedir", "pegar", "peine", "penal", "penar", "penas", "penca", "peñon", "peque", "perno", "perra", "perro", "pesar", "pesca", "petra", "pezon", "piano", "picar", "picor", "pilla", "pinta", "pinza", "piñon", "piojo", "pique", "pisar", "pista", "pitar", "piton", "pivot", "pixel", "pizca", "pizza", "placa", "place", "plaga", "plano", "plata", "plato", "playa", "plaza", "plazo", "plomo", "pluma", "podar", "poder", "poeta", "polca", "polea", "polen", "polvo", "poner", "posar", "poste", "potra", "potro", "prado", "prima", "primo", "prior", "prisa", "prosa", "puber", "pudin", "pudor", "pugna", "pujar", "pulir", "pulpo", "pulse", "pulso", "punir", "punta", "punza", "purga", "puzle", "quark", "queca", "queda", "quedo", "queja", "quema", "quemi", "quena", "quepo", "quera", "queso", "quien", "quien", "quila", "quina", "quino", "quiño", "quipa", "quite", "quito", "quiza", "rabas", "rabia", "radar", "radio", "radon", "ragua", "rahez", "raido", "raigo", "rajar", "rajen", "ralla", "ramas", "ramon", "rampa", "rango", "rapar", "rapaz", "rapte", "rapto", "rasar", "rasca", "rasco", "rasgo", "raspa", "raspe", "ratos", "rauda", "raudo", "rayar", "rayos", "razon", "reata", "reina", "recae", "recai", "recen", "recia", "recio", "recta", "regar", "regia", "regla", "rehen", "reino", "reloj", "remar", "remos", "renal", "renta", "reñir", "reojo", "repta", "resta", "retar", "reten", "retro", "reuma", "reune", "reuso", "reves", "rezar", "riego", "rifar", "rifle", "rigor", "rimas", "rinde", "rioja", "ritmo", "rival", "robar", "roble", "robot", "rocio", "rodar", "rodeo", "rogar", "roido", "rollo", "rombo", "romeo", "rompe", "ronca", "rosca", "rubor", "rubro", "rugir", "ruina", "rumba", "rumie", "saber", "sabio", "sabor", "sacar", "sacia", "sacro", "sagaz", "saino", "sajon", "salar", "salda", "saldo", "salio", "salir", "salle", "salme", "salmo", "salon", "salsa", "salta", "salte", "salto", "salud", "salve", "salvo", "saman", "samba", "samia", "sanar", "sanco", "santa", "santo", "saque", "sarai", "saray", "sarda", "sardo", "sarna", "sasha", "satin", "sauce", "sauco", "saudi", "sauna", "savia", "sazon", "secar", "secta", "secua", "sedal", "sedar", "segar", "segun", "segur", "sello", "selva", "senda", "senil", "señal", "señor", "sepia", "septo", "seres", "serio", "sexto", "siena", "sigla", "siglo", "silla", "simil", "simio", "sismo", "sitio", "sobre", "socas", "socia", "socio", "sodio", "sofia", "solar", "solde", "somos", "sonar", "soñar", "soplo", "sorbo", "sordo", "suave", "sucio", "sudan", "sudar", "suelo", "suero", "sufre", "suiza", "sumar", "super", "susan", "sutil", "tabla", "tacho", "tacon", "tacos", "tacto", "tahur", "taima", "taino", "taita", "tajar", "tajos", "talar", "talco", "tales", "talla", "talon", "talud", "tamiz", "tanda", "tanga", "tango", "tania", "tanta", "tanto", "tañar", "tapar", "taran", "tarde", "tardo", "tarea", "tarot", "tarro", "tasar", "tasca", "tasco", "tatuo", "tauro", "taxon", "tazar", "techo", "tecla", "tedio", "tejas", "tejer", "telar", "telon", "temas", "temer", "temor", "tempo", "tendi", "tener", "tenia", "tenis", "tenor", "tenso", "teñir", "terco", "termo", "terso", "tesis", "tetra", "texto", "tiara", "tibio", "tieso", "tigre", "tilde", "tilin", "timar", "timon", "tinto", "tiple", "tirar", "tiron", "tirso", "titan", "tocar", "toldo", "tomar", "tomos", "tonto", "topar", "toque", "torax", "tosco", "toser", "totem", "traer", "trama", "trans", "trapo", "trato", "trial", "tribu", "trina", "tripa", "triza", "trono", "tropa", "troto", "trova", "trozo", "truco", "tucan", "tumba", "tunel", "tupir", "turbo", "turno", "tutor", "ubica", "ubico", "ubres", "ufana", "ultra", "umbra", "uncir", "unete", "ungir", "unido", "union", "untar", "untos", "urano", "urbes", "urdia", "urdir", "urgio", "urico", "usado", "usara", "usare", "usase", "usted", "usual", "usure", "utero", "uvula", "vacio", "vadea", "vagar", "vagon", "valer", "valla", "valor", "vamos", "vanos", "vapor", "varar", "varia", "vario", "varon", "vasco", "vater", "vatio", "vayan", "vease", "vedar", "vegas", "vejez", "velar", "velon", "vence", "vende", "vengo", "venia", "venir", "venta", "venus", "veras", "verbo", "vermu", "verso", "verti", "viaje", "vibra", "vicio", "video", "vieja", "viejo", "vigia", "vigor", "villa", "vilma", "viral", "visco", "viste", "visto", "vital", "viudo", "vivaz", "vivir", "vocal", "vodka", "volar", "votar", "vuelo", "xenon", "xiote", "xolas", "xolos", "yacer", "yates", "yedra", "yegua", "yelmo", "yendo", "yerba", "yergo", "yerna", "yerno", "yerra", "yesca", "yodos", "yogui", "yogur", "yumbo", "yunta", "zafar", "zagas", "zamba", "zanco", "zanja", "zarpa", "zarza", "zenda", "zetas", "zoila", "zombi", "zorra", "zorro", "zueco", "zumba", "zumbo", "zurda", "zurdo","jalar"]

enum BannerType{
    case error(String)
    case succes
}

final class ViewModel: ObservableObject {
    var numOfRow: Int = 0
    @Published var bannerType: BannerType? = nil
    @Published var result : String = "reina".uppercased()
    @Published var word: [LetterModel] = []
    @Published var gameData: [[LetterModel]] = [
        [.init(""), .init(""), .init(""), .init(""), .init("")],
        [.init(""), .init(""), .init(""), .init(""), .init("")],
        [.init(""), .init(""), .init(""), .init(""), .init("")],
        [.init(""), .init(""), .init(""), .init(""), .init("")],
        [.init(""), .init(""), .init(""), .init(""), .init("")],
        [.init(""), .init(""), .init(""), .init(""), .init("")],
    ]
    
    func addNewLetter(letterModel: LetterModel){
        bannerType = nil
        if letterModel.name == ">" {
            tapOnSend()
            return
        }
        if letterModel.name == "<" {
            tapOnDelete()
            return
        }
        if word.count < 5 {
            let letter = LetterModel(letterModel.name)
            word.append(letter)
            gameData[numOfRow][word.count-1] = letter
        }
    }
    
    private func tapOnSend(){
        print("Tap Send...")
        guard word.count == 5 else {
            print("Añade mas letras...")
            bannerType = .error("¡Añade más letras!")
            return
        }
        let finalStringWord = word.map{$0.name}.joined()
        if myData.contains(finalStringWord.lowercased()){
            print("si existe....\(finalStringWord)")
            for (index, _) in word.enumerated() {
                let currentCaracter = word[index].name
                var status: Status
                
                if result.contains(where: { String($0) == currentCaracter}){
                    status = .appear
                    print("\(currentCaracter) .appear")
                    if currentCaracter == String(result[result.index(result.startIndex, offsetBy: index)]){
                        status = .match
                        print("\(currentCaracter) .match")
                    }
                } else {
                    status = .dontAppear
                    print("\(currentCaracter) .dontApear")
                }
                // Update GameView
                var updateGameBoardCell = gameData[numOfRow][index]
                updateGameBoardCell.status = status
                gameData[numOfRow][index] = updateGameBoardCell
                
                //Update Keyboard
                let indexToUpdate = keyboardData.firstIndex(where: { $0.name == word[index].name })
                var keyboardKey = keyboardData[indexToUpdate!]
                if keyboardKey.status != .match {
                    keyboardKey.status = status
                    keyboardData[indexToUpdate!] = keyboardKey
                }
            }
            //verifica si winer
            let isUserWinner = gameData[numOfRow].reduce(0) { partialResult, letterModel in
                if letterModel.status == .match {
                    return partialResult + 1
                }
                return 0
            }
            if isUserWinner == 5 {
                bannerType = .succes
            } else {
                // Clear and move next word
                word = []
                numOfRow += 1
            }
            
            
        } else {
            print("No existe la palabra")
            bannerType = .error("¡Palabra no existente!")
        }

    }
    
    func hasError(index: Int) -> Bool {
        guard let bannerType = bannerType else {
            return false
        }
        switch bannerType {
        case .error(_):
            return index == numOfRow
        case .succes:
            return false
        }

    }
    
    private func tapOnDelete(){
        guard word.count > 0 else {
            return
        }
        gameData[numOfRow][word.count - 1] = .init("")
        word.removeLast()
        print("Tap on Delete...")
    }
    
    func chooseWord(){
        let numRandom = Int.random(in: 0...myData.count - 1)
        result = myData[numRandom].uppercased()
        print("\(numRandom)--\(result)")
    }
    
    
    

}
