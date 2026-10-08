using System;
using System.Collections.Generic;

public class Pokemon
{
    public string Especie { get; set; }
    public int Nivel { get; set; }

    public Pokemon(string especie, int nivel)
    {
        this.Especie = especie;
        this.Nivel = nivel;
    }

    public virtual void Atacar()
    {
        Console.WriteLine($"{Especie} (nv. {Nivel}) usou Investida!");
    }
}

public class TipoPlanta : Pokemon
{
    public TipoPlanta(string especie, int nivel) : base(especie, nivel) { }

    public override void Atacar()
    {
        Console.WriteLine($"{Especie} (nv. {Nivel}) usou Folha Navalha!");
    }
}

public class TipoEletrico : Pokemon
{
    public TipoEletrico(string especie, int nivel) : base(especie, nivel) { }

    public override void Atacar()
    {
        base.Atacar();
        Console.WriteLine($"{Especie} soltou uma Descarga Elétrica!");
    }
}

public class Program
{
    public static void Main(string[] args)
    {
        Console.WriteLine("=== Batalha de Exibição ===\n");

        List<Pokemon> time = new List<Pokemon>();
        time.Add(new Pokemon("Eevee", 15));
        time.Add(new TipoPlanta("Bulbasaur", 18));
        time.Add(new TipoEletrico("Pikachu", 22));

        foreach (var p in time)
        {
            p.Atacar();
            Console.WriteLine();
        }
    }
}
