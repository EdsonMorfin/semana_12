defmodule Globales do
  def capturar do
    n1=IO.gets("Introduce el primer numero: ")
    |> String.trim
    |> String.to_integer
    n2=IO.gets("Introduce el segundo numero: ")
    |> String.trim
    |>String.to_integer
    {n1,n2}
  end

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
  def suma do
    {n1,n2}=Globales.capturar()
    sumatotal=Enum.sum(n1..n2)
  end
end

defmodule Pares do
  def parimpar do
    choice=IO.gets("Introduce si quieras par(P) o impar(IMP): ")
    |> String.trim
    |> String.upcase
    unless choice=="P" or choice=="IMP" do
      :error
      parimpar()
    end
    choice
  end

  def oddSplit do
    require Integer
    {n1,n2}=Globales.capturar()
    lista=Enum.to_list(n1..n2)
    |>Enum.split_with(&Integer.is_even/1)
    {par,impar}=lista
    opcion=parimpar()
    case opcion do
      "P" -> Enum.sum(par)
      "IMP" -> Enum.sum(impar)
    end
  end
end

defmodule Promedio do

  def nrandom do
    n1=IO.gets("Introduce el numero de parciales: ")
    |> String.trim
    |> String.to_integer
    unless n1 > 1 do
      nrandom()
    end
    n1

  end

  def sumaPromedio do
    n=nrandom()
    lista= for x <- 1..n do
      Enum.random(0..10)
    end
    IO.inspect(lista)
    subtotal=Enum.sum(lista)
    total=subtotal/n
  end
end
