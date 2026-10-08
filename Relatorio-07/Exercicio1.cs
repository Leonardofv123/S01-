using System;

public class CombatenteDeGondor
{
    public string Nome { get; private set; }
    public string Povo { get; private set; }
    public string Posto { get; private set; }

    public string Armamento { get; private set; } = "Desarmado";

    public CombatenteDeGondor(string nome, string povo, string posto)
    {
        this.Nome = nome;
        this.Povo = povo;
        this.Posto = posto;
    }

    public void Equipar(string arma)
    {
        this.Armamento = arma;
    }

    public void ApresentarUnidade()
    {
        Console.WriteLine($"\n--- {Nome} ---");
        Console.WriteLine($"Povo: {Povo}");
        Console.WriteLine($"Posto: {Posto}");

        if (Armamento != "Desarmado")
        {
            Console.WriteLine($"Armamento: {Armamento}");
        }
    }
}

public class Program
{
    public static void Main(string[] args)
    {
        Console.WriteLine("=== Convocação para defender Minas Tirith ===");

        CombatenteDeGondor aragorn = new CombatenteDeGondor("Aragorn", "Dúnedain", "Capitão");
        CombatenteDeGondor beregond = new CombatenteDeGondor("Beregond", "Homem de Gondor", "Guarda da Cidadela");
        CombatenteDeGondor pippin = new CombatenteDeGondor("Pippin", "Hobbit", "Escudeiro de Denethor");

        aragorn.Equipar("Andúril");
        beregond.Equipar("Lança e escudo");

        aragorn.ApresentarUnidade();
        beregond.ApresentarUnidade();
        pippin.ApresentarUnidade();

        // aragorn.Posto = "Rei de Gondor";
    }
}
