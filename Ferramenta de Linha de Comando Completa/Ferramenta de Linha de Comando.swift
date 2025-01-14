import Foundation

// Função para contar palavras
func countWords(in file: String) {
    do {
        let content = try String(contentsOfFile: file)
        let wordCount = content.split { $0.isWhitespace }.count
        print("Número de palavras: \(wordCount)")
    } catch {
        print("Erro ao ler o arquivo: \(error)")
    }
}

// Função para buscar uma palavra específica
func findWord(_ word: String, in file: String) {
    do {
        let content = try String(contentsOfFile: file)
        let occurrences = content.components(separatedBy: word).count - 1
        print("A palavra '\(word)' ocorre \(occurrences) vez(es).")
    } catch {
        print("Erro ao ler o arquivo: \(error)")
    }
}

// Função para substituir palavras
func replaceWord(_ oldWord: String, with newWord: String, in file: String) {
    do {
        let content = try String(contentsOfFile: file)
        let updatedContent = content.replacingOccurrences(of: oldWord, with: newWord)
        try updatedContent.write(toFile: file, atomically: true, encoding: .utf8)
        print("Substituição concluída com sucesso.")
    } catch {
        print("Erro ao processar o arquivo: \(error)")
    }
}

// Main
let arguments = CommandLine.arguments

guard arguments.count > 2 else {
    displayHelp()
    exit(1)
}

let command = arguments[1]
let filePath = arguments[2]

switch command {
case "count":
    countWords(in: filePath)
case "find":
    guard arguments.count > 3 else {
        print("Erro: Informe a palavra a ser buscada.")
        displayHelp()
        exit(1)
    }
    findWord(arguments[3], in: filePath)
case "replace":
    guard arguments.count > 4 else {
        print("Erro: Informe a palavra antiga e a nova.")
        displayHelp()
        exit(1)
    }
    replaceWord(arguments[3], with: arguments[4], in: filePath)
default:
    print("Comando desconhecido.")
    displayHelp()
}