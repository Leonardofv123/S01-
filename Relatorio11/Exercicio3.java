import java.util.HashMap;

interface Sobrenatural {
    void manifestar();
}

class Alienigena implements Sobrenatural {
    private String nome;

    public Alienigena(String nome) {
        this.nome = nome;
    }

    @Override
    public void manifestar() {
        System.out.println(nome + " apareceu e tentou abduzir todo mundo!");
    }
}

class EspiritoYoukai implements Sobrenatural {
    private String nome;

    public EspiritoYoukai(String nome) {
        this.nome = nome;
    }

    @Override
    public void manifestar() {
        System.out.println(nome + " surgiu do nada e saiu correndo atrás de quem estava lá!");
    }
}

class MapaDeAvistamentos {
    private HashMap<String, Sobrenatural> avistamentos;

    public MapaDeAvistamentos() {
        avistamentos = new HashMap<>();
    }

    public void registrar(String local, Sobrenatural ser) {
        avistamentos.put(local, ser);
    }

    public void investigar(String local) {
        Sobrenatural ser = avistamentos.get(local);
        if (ser == null) {
            System.out.println(local + ": tudo tranquilo por aqui.");
        } else {
            System.out.print(local + ": ");
            ser.manifestar();
        }
    }
}

public class Main {
    public static void main(String[] args) {
        Sobrenatural serpo = new Alienigena("Serpo");
        Sobrenatural vovo = new EspiritoYoukai("Turbo Vovó");

        MapaDeAvistamentos mapa = new MapaDeAvistamentos();
        mapa.registrar("Hospital abandonado", serpo);
        mapa.registrar("Túnel", vovo);

        mapa.investigar("Hospital abandonado");
        mapa.investigar("Túnel");
        mapa.investigar("Escola");
    }
}
