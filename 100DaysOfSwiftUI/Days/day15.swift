//
//  day15.swift
//  100DaysOfSwiftUI
//
//  Created by Bernardo Santos Maranhão Maia on 25/07/24.
//

import Foundation

class day15: day {
    static func main() {
        // Criando variáveis e constantes
        var nome = "Ted"
        nome = "Rebecca"

        // Se você não quiser mudar o valor, use uma constante
        let usuario = "Daphne"
        print(usuario) // Exibindo o valor da constante

        // Strings em Swift começam e terminam com aspas duplas
        let ator = "Tom Cruise"
        let atorComEmoji = "Tom Cruise 🏃‍♂️"

        // Para incluir aspas duplas dentro da string, use uma barra invertida antes
        let citacao = "Ele tocou uma placa dizendo \"Acredite\" e foi embora."

        // Para strings que ocupam várias linhas, use três aspas duplas no início e no fim
        let filme = """
        Um dia na
        vida de um
        engenheiro da Apple
        """
        print(ator.count) // Contando o número de caracteres na string

        // Verificando se a string começa ou termina com um texto específico
        print(citacao.hasPrefix("Ele")) // Verifica se a citação começa com "Ele"
        print(citacao.hasSuffix("embora.")) // Verifica se a citação termina com "embora."

        // Inteiros em Swift usam o tipo Int e suportam operadores matemáticos padrões
        let pontuacao = 10
        let pontuacaoMaisAlta = pontuacao + 10
        let pontuacaoDividida = pontuacao / 2

        // Usando operadores compostos para modificar variáveis no local
        var contador = 10
        contador += 5

        // Verificando se um número é múltiplo de outro
        let numero = 120
        print(numero.isMultiple(of: 3))

        // Criando inteiros aleatórios dentro de um intervalo específico
        let id = Int.random(in: 1...1000)

        // Se você criar um número com ponto decimal, Swift o considerará como Double
        let pontuacaoDecimal = 3.0

        // Booleans em Swift usam o tipo Bool para armazenar verdadeiro ou falso
        let cachorrosBons = true
        let jogoTerminado = false

        // Invertendo um Booleano de verdadeiro para falso
        var salvo = false
        salvo.toggle()

        // Interpolação de strings permite criar strings a partir de outros dados
        let nomeInterpolacao = "Taylor"
        let idadeInterpolacao = 26
        let mensagem = "Eu sou \(nomeInterpolacao) e tenho \(idadeInterpolacao) anos."
        print(mensagem)

        // Agrupando itens em um array
        var cores = ["Vermelho", "Verde", "Azul"]
        let numeros = [4, 8, 15, 16]
        var leituras = [0.1, 0.5, 0.8]
        print(cores[0]) // Acessando o primeiro elemento do array
        print(leituras[2]) // Acessando o terceiro elemento do array

        // Adicionando novos itens a um array
        cores.append("Xadrez")
        print(cores.count) // Contando o número de itens no array

        // Removendo um item em um índice específico do array
        cores.remove(at: 0)

        // Verificando se um array contém um item específico
        print(cores.contains("Octarina"))

        // Dicionários armazenam múltiplos valores de acordo com uma chave específica
        let funcionario = [
            "nome": "Taylor",
            "profissao": "Cantor"
        ]
        print(funcionario["nome", default: "Desconhecido"]) // Acessando valor por chave
        print(funcionario["profissao", default: "Desconhecido"])

        // Sets são semelhantes a arrays, mas não permitem valores duplicados e não armazenam itens em uma ordem específica
        var numerosSet = Set([1, 1, 3, 5, 7])
        print(numerosSet)

        // Adicionando itens a um set
        numerosSet.insert(10)

        // Enums são um conjunto de valores nomeados que podemos criar e usar para tornar nosso código mais eficiente e seguro
        enum DiaDaSemana {
            case segunda, terca, quarta, quinta, sexta
        }

        var dia = DiaDaSemana.segunda
        dia = .sexta

        // Anotação de tipo para forçar um tipo específico para uma nova variável ou constante
        var pontuacaoForcada: Double = 0

        // Exemplos de anotações de tipo
        let jogador: String = "Roy"
        var numeroDaSorte: Int = 13
        let pi: Double = 3.141
        var estaHabilitado: Bool = true
        var albuns: Array<String> = ["Red", "Fearless"]
        var usuarioDict: Dictionary<String, String> = ["id": "@twostraws"]
        var livros: Set<String> = Set(["The Bluest Eye", "Foundation"])

        // Sintaxe mais fácil para arrays e dicionários
        var albunsSimplificado: [String] = ["Red", "Fearless"]
        var usuarioSimplificado: [String: String] = ["id": "@twostraws"]

        // Criando coleções vazias com anotação de tipo
        var equipes: [String] = [String]()
        var pistas = [String]()

        // Valores de um enum têm o mesmo tipo que o próprio enum
        enum EstiloUI {
            case claro, escuro, sistema
        }

        var estilo: EstiloUI = .claro

        // Usando if, else, e else if para checar uma condição e executar um código apropriado
        let idade = 16

        if idade < 12 {
            print("Você não pode votar")
        } else if idade < 18 {
            print("Você poderá votar em breve.")
        } else {
            print("Você já pode votar.")
        }

        // Combinando duas condições com &&
        let temperatura = 26

        if temperatura > 20 && temperatura < 30 {
            print("Está um dia agradável.")
        }

        // Usando || para que a condição seja verdadeira se qualquer subcondição for verdadeira
        if temperatura > 20 || temperatura < 10 {
            print("Está um dia especial.")
        }

        // Checando um valor contra várias condições usando switch/case
        enum Tempo {
            case sol, chuva, vento
        }

        let previsao = Tempo.sol

        switch previsao {
        case .sol:
            print("Um dia bonito.")
        case .chuva:
            print("Leve um guarda-chuva.")
        default:
            print("Deverá estar ok.")
        }

        // Usando o operador ternário para checar uma condição e retornar um dos dois valores
        let idadeTernario = 18
        let podeVotar = idadeTernario >= 18 ? "Sim" : "Não"

        // Loops for para executar um código para cada item em uma coleção ou em um intervalo personalizado
        let plataformas = ["iOS", "macOS", "tvOS", "watchOS"]

        for os in plataformas {
            print("Swift funciona no \(os).")
        }

        for i in 1...12 {
            print("5 x \(i) é \(5 * i)")
        }

        for i in 1..<13 {
            print("5 x \(i) é \(5 * i)")
        }

        // Se você não precisa da variável de loop, use _
        var letra = "Haters gonna"

        for _ in 1...5 {
            letra += " hate"
        }

        print(letra)

        // Usando while loops para executar um código até que uma condição seja falsa
        var contagem = 10

        while contagem > 0 {
            print("\(contagem)…")
            contagem -= 1
        }

        print("Vai!")

        // Usando continue para pular a iteração atual do loop
        let arquivos = ["me.jpg", "work.txt", "sophie.jpg"]

        for arquivo in arquivos {
            if arquivo.hasSuffix(".jpg") == false {
                continue
            }

            print("Imagem encontrada: \(arquivo)")
        }

        // Usando break para sair de um loop e pular todas as iterações restantes

        // Criando uma nova função
        func imprimirTabuada(numero: Int) {
            for i in 1...12 {
                print("\(i) x \(numero) é \(i * numero)")
            }
        }

        imprimirTabuada(numero: 5)

        // Retornando dados de uma função
        func rolarDado() -> Int {
            return Int.random(in: 1...6)
        }

        let resultado = rolarDado()
        print(resultado)

        // Funções com uma única linha de código não precisam da palavra-chave return
        func rolarDadoSimplificado() -> Int {
            Int.random(in: 1...6)
        }

        // Retornando múltiplos valores de funções usando tuplas
        func obterUsuario() -> (primeiroNome: String, ultimoNome: String) {
            (primeiroNome: "Taylor", ultimoNome: "Swift")
        }

        let usuarioTupla = obterUsuario()
        print("Nome: \(usuarioTupla.primeiroNome) \(usuarioTupla.ultimoNome)")

        // Desestruturando uma tupla
        let (primeiroNome, _) = obterUsuario()
        print("Nome: \(primeiroNome)")

        // Personalizando os rótulos dos parâmetros
        func ehMaiuscula(_ string: String) -> Bool {
            string == string.uppercased()
        }

        let stringTeste = "HELLO, WORLD"
        let resultadoTeste = ehMaiuscula(stringTeste)

        // Rótulos internos e externos de parâmetros
        func imprimirTabuadaPara(numero: Int) {
            for i in 1...12 {
                print("\(i) x \(numero) é \(i * numero)")
            }
        }

        imprimirTabuadaPara(numero: 5)

        // Fornecendo valores padrão para parâmetros
        func cumprimentar(_ pessoa: String, formal: Bool = false) {
            if formal {
                print("Bem-vindo, \(pessoa)!")
            } else {
                print("Oi, \(pessoa)!")
            }
        }

        cumprimentar("Tim", formal: true)
        cumprimentar("Taylor")

        // Tratando erros em funções
        enum ErroSenha: Error {
            case curta, obvia
        }

        func checarSenha(_ senha: String) throws -> String {
            if senha.count < 5 {
                throw ErroSenha.curta
            }

            if senha == "12345" {
                throw ErroSenha.obvia
            }

            if senha.count < 10 {
                return "OK"
            } else {
                return "Boa"
            }
        }

        let senha = "12345"

        do {
            let resultado = try checarSenha(senha)
            print("Avaliação: \(resultado)")
        } catch ErroSenha.obvia {
            print("Eu tenho a mesma combinação na minha bagagem!")
        } catch {
            print("Houve um erro.")
        }

        // Closures são blocos de código que podem ser passados e usados em seu código
        let dizerOla = {
            print("Oi lá!")
        }

        dizerOla()

        // Closures podem aceitar parâmetros e retornar valores
        let dizerOlaComNome = { (nome: String) -> String in
            "Oi \(nome)!"
        }

        print(dizerOlaComNome("Taylor"))

        // Usando closures em métodos de array
        let equipe = ["Gloria", "Suzanne", "Tiffany", "Tasha"]
        let somenteT = equipe.filter { $0.hasPrefix("T") }
        print(somenteT)

        // Criando uma struct personalizada
        struct Album {
            let titulo: String
            let artista: String
            var foiLancado = true

            func imprimirResumo() {
                print("\(titulo) por \(artista)")
            }
        }

        let red = Album(titulo: "Red", artista: "Taylor Swift")
        print(red.titulo)
        red.imprimirResumo()

    }
}
