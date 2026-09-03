use std::io;
 
fn acertou_o_alvo(palpite: i32, numero_secreto: i32) -> bool {
    (palpite - numero_secreto).abs() <= 5
}
 
fn main() {
    let numero_secreto: i32 = 42;
 
    loop {
        println!("Digite seu palpite:");
 
        let mut entrada = String::new();
        io::stdin().read_line(&mut entrada).expect("Erro ao ler");
 
        let palpite: i32 = match entrada.trim().parse() {
            Ok(n) => n,
            Err(_) => {
                println!("Digite um numero valido.");
                continue;
            }
        };
 
        if acertou_o_alvo(palpite, numero_secreto) {
            let distancia = (palpite - numero_secreto).abs();
            println!("Parabens, voce acertou o alvo!");
            println!(
                "Voce ficou a apenas {} unidade(s) do numero secreto ({}).",
                distancia, numero_secreto
            );
            break;
        } else {
            println!("Voce passou longe! Tente novamente.");
        }
    }
}
