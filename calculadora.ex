defmodule Globales do

end

defmodule Calculadora do
  def capturar do
    operador=IO.gets("Introduce con simbolo la operacion que quieres realizar: ")
    |> String.trim
    n1=IO.gets("Introduce el primer numero: ")
    |> String.trim
    |> String.to_float
    n2=IO.gets("Introduce el segundo numero: ")
    |> String.trim
    |>String.to_float
    completo={n1,n2}
    calculadora(operador,completo)
  end

  def capturaroperador do
    operador=IO.gets("Introduce con simbolo la operacion que quieres realizar: ")
  end
  def calculadora(opcion,{n1,n2})do
    case opcion do
      "+" -> n1+n2
      "-" -> n1-n2
      "*" -> n1*n2
      "/" when n2 !=0 -> n1/n2
      "/" when n2==0 -> "no es posible dividir por 0"
      _ -> :error
    end
  end
end


defmodule Rangos do
  def capturar do
    n1=IO.gets("Introduce el primer numero: ")
    |> String.trim
    |> String.to_integer
    n2=IO.gets("Introduce el segundo numero: ")
    |> String.trim
    |>String.to_integer
    {n1,n2}
  end

  def suma do
    {n1,n2}=capturar()
    sumatotal=Enum.sum(n1..n2)
  end
end

defmodule Pares do
  def parimpar do
    choice=IO.gets("Introduce si quieras par(P) o impar(IMP): ")
    |> String.trim
  end

  def oddSplit do
    require Integer
    {n1,n2}=Rangos.capturar()
    lista=Enum.to_list(n1..n2)
    |>Enum.split_with(&Integer.is_even/1)
    {par,impar}=lista
    opcion=parimpar()
    case opcion do
      "P" -> Enum.sum(par)
      "IMP" -> Enum.sum(impar)
      _ -> :error
    end
  end
end

defmodule Promedio do
  def nrandom do
    n1=IO.gets("Introduce el primer numero: ")
    |> String.trim
    |> String.to_integer
  end

  def sumaPromedio do
    lista= for x <- 1..nrandom() do
      Enum.random(0..10)
    end
    Enum.sum(par)
  end
end
