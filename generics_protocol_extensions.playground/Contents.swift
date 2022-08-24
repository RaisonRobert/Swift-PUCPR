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
class Usuario{
    var username: String
    var senha: String
    var ativo: Bool
    init(_ username: String, _ senha : String){
        self.username = username
        self.senha = senha
        self.ativo = true
    }
}

class Administrador: Usuario{
    var chave: Int
    init(_ username: String, _ senha : String,_ chave:Int){
        self.chave = chave
        super.init(username, senha)
    }
}
