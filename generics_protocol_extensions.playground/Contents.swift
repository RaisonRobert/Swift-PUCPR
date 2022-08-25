  //Extension

extension Int{
    func imprime_eu( ){
        for _ in 1...self {
            print(self)
        }
    }
}

3.imprime_eu()

//Protocol == Interface
protocol LoginProtocol{
    func login(_ username: String, _ senha: String)->Bool
}
// Usuário está em conformidade com o LoginProtocol
// Usuário implementa a interface LoginInterface
// Uma classe pode implementar múltipos protocolos
// Logável
class Usuario: LoginProtocol {
    var username: String
    var senha: String
    var ativo: Bool
    init(_ username: String, _ senha : String){
        self.username = username
        self.senha = senha
        self.ativo = true
    }
    func login(_ username: String, _ senha: String) -> Bool {
        return self.username == username && self.senha == senha
    }
}

class Administrador: Usuario{
    var chave: Int
    init(_ username: String, _ senha : String,_ chave:Int){
        self.chave = chave
        super.init(username, senha)
    }
}

// Sistema

var usuario: LoginProtocol = Usuario("padin", "aadakjfhajlksdhfalkjsf")
print(usuario.login("Ze das Couves", "senha"))

//Generics
func trocar<T>(_ a: inout T, _ b: inout T){
    let aux = a
    a = b
    b = aux
}

var x = 10
var y = 20
trocar(&x, &y)
print(x)
print(y)



// Pilha e Fila: Push e Pop

protocol PushAndPopable{
    associatedtype T
    var qtde: Int{get }
    mutating func pop( ) -> T
    mutating func push(_ valor: T)
}
struct Fila<T>: PushAndPopable{
    var valores: [T] = [ ]
    
    // Propriedade
    var qtde : Int{
        return valores.count
    }
    mutating func pop( ) -> T{
        return valores.removeFirst()
    }
    mutating func push(_ valor:T){
        valores.append(valor)
    }
}
//struct Pilha<T>: PushAndPopable{
//    var qtde: Int
//
//    mutating func pop() -> T {
//
//    }
//
//    mutating func push(_ valor: T) {
//        <#code#>
//    }
//
//
//}
//struct Fila<T>{
//    var valores: [T] = [ ]
//    // Propriedade
//    var qtde : Int{
//        return valores.count
//    }
//    mutating func pop( ) -> T{
//        return valores.removeFirst()
//    }
//    mutating func push(_ valor:T){
//        valores.append(valor)
//    }
//}
//
var fila:Fila <Int> = Fila()
fila.push(10)
fila.push(20)
fila.pop()

var fila2: Fila<Usuario> = Fila()




