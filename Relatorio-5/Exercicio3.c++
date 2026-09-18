#include <iostream>
#include <iomanip>
using namespace std;
 
int main() {
    float capacidadeMaxima;
    float cargaAtual = 0.0; 
    int opcao;
 
    cout << "Informe a capacidade maxima de carga do drone (kg): ";
    cin >> capacidadeMaxima;
 
    cout << fixed << setprecision(2); 
 
    do {
        cout << "\n=== SISTEMA DE CARGA DO DRONE ===" << endl;
        cout << "1. Verificar Carga" << endl;
        cout << "2. Carregar Pacote" << endl;
        cout << "3. Descarregar Pacote" << endl;
        cout << "4. Encerrar Operacao" << endl;
        cout << "Escolha uma opcao: ";
        cin >> opcao;
 
        if (opcao == 1) {
            cout << "\nCarga Atual: " << cargaAtual << " kg / " << capacidadeMaxima << " kg" << endl;
            cout << "Espaco Disponivel: " << capacidadeMaxima - cargaAtual << " kg" << endl;
        }
        else if (opcao == 2) {
            float peso;
            cout << "\nDigite o peso do pacote a ser carregado (kg): ";
            cin >> peso;
 
            if (cargaAtual + peso > capacidadeMaxima) {
                cout << "Alerta: Peso maximo de decolagem excedido! Operacao cancelada." << endl;
            } else {
                cargaAtual = cargaAtual + peso;
                cout << "Pacote adicionado com sucesso!" << endl;
            }
        }
        else if (opcao == 3) {
            float peso;
            cout << "\nDigite o peso do pacote a ser removido (kg): ";
            cin >> peso;
 
            if (peso > cargaAtual) {
                cout << "Erro: nao e possivel remover mais peso do que o drone esta carregando." << endl;
            } else {
                cargaAtual = cargaAtual - peso;
                cout << "Pacote removido com sucesso!" << endl;
            }
        }
        else if (opcao == 4) {
            cout << "\nEncerrando sistema de telemetria..." << endl;
        }
        else {
            cout << "\nOpcao invalida, tente de novo." << endl;
        }
 
    } while (opcao != 4);
 
    return 0;
}
