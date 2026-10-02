#include <iostream>
#include <string>
using namespace std;

class Banda {
public:
    string nome;
    int integrantes;
    float potenciaSom;
    int energia;

    void duelar(Banda &rival) {
        cout << nome << " subiu no palco pra desafiar " << rival.nome << "!" << endl;
        rival.energia -= potenciaSom;
    }

    void mostrarStatus() {
        cout << nome << " | integrantes: " << integrantes
             << " | potencia: " << potenciaSom
             << " | energia da plateia: " << energia << endl;
    }
};

int main() {
    Banda b1;
    b1.nome = "Os Barulhentos";
    b1.integrantes = 5;
    b1.potenciaSom = 35.5;
    b1.energia = 100;

    Banda b2;
    b2.nome = "Eletro Sapucai";
    b2.integrantes = 3;
    b2.potenciaSom = 28.0;
    b2.energia = 100;

    cout << "=== Duelo de Bandas ===" << endl;
    b1.duelar(b2);

    cout << endl << "Status depois do duelo:" << endl;
    b1.mostrarStatus();
    b2.mostrarStatus();

    return 0;
}
