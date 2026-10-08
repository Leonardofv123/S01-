using System;
using System.Collections.Generic;

public class EntidadeCosmica
{
    public string Nome { get; set; }
    public string Origem { get; set; } = "Desconhecida";

    public EntidadeCosmica(string nome)
    {
        this.Nome = nome;
    }

    public virtual void Manifestar()
    {
        Console.WriteLine($"\n--- {Nome} ---");

        if (Origem != "Desconhecida")
        {
            Console.WriteLine($"Origem: {Origem}");
        }
    }
}

public class Profundo : EntidadeCosmica
{
    public Profundo(string nome) : base(nome) { }

    public override void Manifestar()
    {
        Console.WriteLine($"\n--- {Nome} ---");
        Console.WriteLine("Um cheiro de maresia toma conta da sala. Algo se arrasta vindo do mar.");
    }
}

public class MiGo : EntidadeCosmica
{
    public MiGo(string nome) : base(nome) { }

    public override void Manifestar()
    {
        base.Manifestar();
        Console.WriteLine("Um zumbido estranho ecoa, como asas de inseto tentando imitar uma voz humana.");
    }
}

public class Pesquisador
{
    public string Nome { get; set; }

    private List<EntidadeCosmica> _catalogo;

    public Pesquisador(string nome)
    {
        this.Nome = nome;
        this._catalogo = new List<EntidadeCosmica>();
    }

    public void Catalogar(EntidadeCosmica e)
    {
        _catalogo.Add(e);
    }

    public void LerCatalogo()
    {
        Console.WriteLine($"\nCatálogo de {Nome} ({_catalogo.Count} relatos):");

        foreach (var e in _catalogo)
        {
            e.Manifestar();
        }
    }
}

public class Program
{
    public static void Main(string[] args)
    {
        Console.WriteLine("=== Biblioteca da Universidade Miskatonic ===");

        EntidadeCosmica cor = new EntidadeCosmica("A Cor que Caiu do Céu");
        Profundo profundo = new Profundo("Profundo de Innsmouth");
        MiGo migo = new MiGo("Mi-Go");

        migo.Origem = "Yuggoth";

        Pesquisador armitage = new Pesquisador("Dr. Henry Armitage");
        armitage.Catalogar(cor);
        armitage.Catalogar(profundo);
        armitage.Catalogar(migo);

        armitage.LerCatalogo();
    }
}
