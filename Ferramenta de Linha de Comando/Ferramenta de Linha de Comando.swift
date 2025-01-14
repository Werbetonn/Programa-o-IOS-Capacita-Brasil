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