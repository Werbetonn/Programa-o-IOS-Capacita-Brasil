1. Princípio da Responsabilidade única (SRP)

Definição: Uma classe deve ter apenas uma razão para mudar, ou seja, deve ser responsável por um único aspecto do software.

Importância:
Garante que cada classe tenha um propósito claro.
Facilita o entendimento e a manutenção do código, evitando que alterações em uma funcionalidade impactem outras.


Exemplo Prático: Em um sistema de gerenciamento de usuários:
class UserManager {
    func saveUser(user: User) {
        // Lógica para salvar o usuário
    }
}

class EmailSender {
    func sendWelcomeEmail(to user: User) {
        // Lógica para enviar email
    }
}


2. Princípio Aberto/Fechado (OCP)
Definição: Uma entidade de software deve estar aberta para extensão, mas fechada para modificação.

Importância:
Permite adicionar novas funcionalidades sem alterar o código existente.
Reduz o risco de introduzir bugs ao modificar código funcional.
Exemplo Prático: Adicionando novos métodos de pagamento sem alterar a lógica principal:

Exemplo Prático: Adicionando novos métodos de pagamento sem alterar a lógica principal:
protocol PaymentMethod {
    func processPayment(amount: Double)
}

class CreditCard: PaymentMethod {
    func processPayment(amount: Double) {
        print("Pagando com cartão de crédito: \(amount)")
    }
}

class PayPal: PaymentMethod {
    func processPayment(amount: Double) {
        print("Pagando com PayPal: \(amount)")
    }
}


Com base no conteúdo extraído sobre os princípios SOLID e o que foi aprendido, segue uma síntese de cada princípio, sua importância e exemplos práticos de aplicação no código:

1. Princípio da Responsabilidade Única (SRP)
Definição: Uma classe deve ter apenas uma razão para mudar, ou seja, deve ser responsável por um único aspecto do software.

Importância:

Garante que cada classe tenha um propósito claro.
Facilita o entendimento e a manutenção do código, evitando que alterações em uma funcionalidade impactem outras.
Exemplo Prático: Em um sistema de gerenciamento de usuários:

swift
Copiar código
class UserManager {
    func saveUser(user: User) {
        // Lógica para salvar o usuário
    }
}

class EmailSender {
    func sendWelcomeEmail(to user: User) {
        // Lógica para enviar email
    }
}
Por que funciona? A responsabilidade de gerenciar usuários é separada da de enviar emails.

2. Princípio Aberto/Fechado (OCP)
Definição: Uma entidade de software deve estar aberta para extensão, mas fechada para modificação.

Importância:

Permite adicionar novas funcionalidades sem alterar o código existente.
Reduz o risco de introduzir bugs ao modificar código funcional.
Exemplo Prático: Adicionando novos métodos de pagamento sem alterar a lógica principal:

swift
Copiar código
protocol PaymentMethod {
    func processPayment(amount: Double)
}

class CreditCard: PaymentMethod {
    func processPayment(amount: Double) {
        print("Pagando com cartão de crédito: \(amount)")
    }
}

class PayPal: PaymentMethod {
    func processPayment(amount: Double) {
        print("Pagando com PayPal: \(amount)")
    }
}
Por que funciona? Novas formas de pagamento podem ser adicionadas criando novas classes que implementam PaymentMethod.

3. Princípio da Substituição de Liskov (LSP)
Definição: Subclasses devem poder substituir suas classes base sem alterar o comportamento do sistema.

Importância:

Mantém a previsibilidade do código.
Garante que substituições de classes não causem problemas inesperados.

Exemplo Prático: Modelagem de formas geométricas:
class Rectangle {
    var width: Double
    var height: Double

    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }

    func area() -> Double {
        return width * height
    }
}

class Square: Rectangle {
    override var width: Double {
        didSet { height = width }
    }

    override var height: Double {
        didSet { width = height }
    }
}

Com base no conteúdo extraído sobre os princípios SOLID e o que foi aprendido, segue uma síntese de cada princípio, sua importância e exemplos práticos de aplicação no código:

1. Princípio da Responsabilidade Única (SRP)
Definição: Uma classe deve ter apenas uma razão para mudar, ou seja, deve ser responsável por um único aspecto do software.

Importância:

Garante que cada classe tenha um propósito claro.
Facilita o entendimento e a manutenção do código, evitando que alterações em uma funcionalidade impactem outras.
Exemplo Prático: Em um sistema de gerenciamento de usuários:

swift
Copiar código
class UserManager {
    func saveUser(user: User) {
        // Lógica para salvar o usuário
    }
}

class EmailSender {
    func sendWelcomeEmail(to user: User) {
        // Lógica para enviar email
    }
}
Por que funciona? A responsabilidade de gerenciar usuários é separada da de enviar emails.

2. Princípio Aberto/Fechado (OCP)
Definição: Uma entidade de software deve estar aberta para extensão, mas fechada para modificação.

Importância:

Permite adicionar novas funcionalidades sem alterar o código existente.
Reduz o risco de introduzir bugs ao modificar código funcional.
Exemplo Prático: Adicionando novos métodos de pagamento sem alterar a lógica principal:

swift
Copiar código
protocol PaymentMethod {
    func processPayment(amount: Double)
}

class CreditCard: PaymentMethod {
    func processPayment(amount: Double) {
        print("Pagando com cartão de crédito: \(amount)")
    }
}

class PayPal: PaymentMethod {
    func processPayment(amount: Double) {
        print("Pagando com PayPal: \(amount)")
    }
}
Por que funciona? Novas formas de pagamento podem ser adicionadas criando novas classes que implementam PaymentMethod.

3. Princípio da Substituição de Liskov (LSP)
Definição: Subclasses devem poder substituir suas classes base sem alterar o comportamento do sistema.

Importância:
Mantém a previsibilidade do código.
Garante que substituições de classes não causem problemas inesperados.
Exemplo Prático: Modelagem de formas geométricas:

swift
Copiar código
class Rectangle {
    var width: Double
    var height: Double

    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }

    func area() -> Double {
        return width * height
    }
}

class Square: Rectangle {
    override var width: Double {
        didSet { height = width }
    }

    override var height: Double {
        didSet { width = height }
    }
}


4. Princípio da Segregação de Interfaces (ISP)
Definição: É melhor ter várias interfaces específicas do que uma única interface genérica e grande.

Importância:
Evita que classes sejam obrigadas a implementar métodos que não utilizam.
Promove o design modular.

Exemplo Prático: Interfaces específicas para dispositivos:
protocol Printer {
    func printDocument()
}

protocol Scanner {
    func scanDocument()
}

class MultifunctionDevice: Printer, Scanner {
    func printDocument() {
        print("Imprimindo documento")
    }

    func scanDocument() {
        print("Escaneando documento")
    }
}


5. Princípio da Inversão de Dependência (DIP)
Definição: Dependa de abstrações, não de implementações concretas.

Importância:
Facilita o desacoplamento de componentes.
Melhora a testabilidade do código.

Exemplo Prático: Injeção de dependência:
protocol Database {
    func save(data: String)
}

class MySQLDatabase: Database {
    func save(data: String) {
        print("Dados salvos no MySQL: \(data)")
    }
}

class DataManager {
    private let database: Database

    init(database: Database) {
        self.database = database
    }

    func saveData(data: String) {
        database.save(data: data)
    }
}