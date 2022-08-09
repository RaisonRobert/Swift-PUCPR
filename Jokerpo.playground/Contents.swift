import UIKit

enum TipoMao{
    case pedra
    case papel
    case tesoura
}
enum TipoResult{
    case vitoria
    case derrota
    case empate
}
func jokenpo(_ mao1: TipoMao, _ mao2: TipoMao) -> TipoResult {
    switch (mao1, mao2){
    case (.pedra, .tesoura),
        (.tesoura, .papel),
        (.papel, .pedra):
        return .vitoria
    case (mao1, mao2) where mao1 == mao2:
        return.empate
    default: return .derrota
        
    }
}
jokenpo(.pedra, .tesoura)
jokenpo(.pedra, .papel)
jokenpo(.tesoura, .papel)
jokenpo(.papel, .pedra)
jokenpo(.tesoura, .tesoura)
