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
end
