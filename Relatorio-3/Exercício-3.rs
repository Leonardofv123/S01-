use std::io;
 
fn imprimir_terminados_em(digito: i32, limite_inferior: i32, limite_superior: i32) {
    println!("--- Numeros no intervalo terminados em {} ---", digito);
 
    for numero in limite_inferior..=limite_superior {
        if numero % 10 == digito {
            println!("{}", numero);
        }
    }
}
 
fn ler_inteiro(mensagem: &str) -> i32 {
    loop {
        println!("{}", mensagem);
 
        let mut entrada = String::new();
        io::stdin().read_line(&mut entrada).expect("Erro ao ler");
 
        match entrada.trim().parse() {
            Ok(n) => return n,
            Err(_) => println!("Valor invalido, tente de novo."),
        }
    }
}
 
fn main() {
    let digito = ler_inteiro("Digite o digito final desejado (0 a 9):");
    let limite_inferior = ler_inteiro("Digite o limite inferior:");
    let limite_superior = ler_inteiro("Digite o limite superior:");
 
    imprimir_terminados_em(digito, limite_inferior, limite_superior);
}
