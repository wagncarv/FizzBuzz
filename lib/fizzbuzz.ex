defmodule Fizzbuzz do

  @doc """
    Lê números contidos no arquivo especificado e os formata. Múltiplos de 3 serão substituídos por
    *fizz*, de 5, *buzz*, 3 e 5, *fizzbuzz*. Retorna nova lista.
    ```
    Exemplo
      numbers = 0,1,2,3,4,5,6,7,8,9
      iex> Fizzbuzz.build("numbers.txt")
      {:ok, [:fizzbuzz, 1, 2, :fizz, 4, :buzz, :fizz, 7, 8, :fizz]}

  ```
  """
  def build(file_name) do
    file_name
    |> File.read()
    |> handle_file_read()
  end

  #
  defp handle_file_read({:ok, result}) do
    result =
      result
      |> String.split(",")
      |> Enum.map(&convert_and_evaluate_numbers/1)

    {:ok, result}
  end

  #
  defp handle_file_read({:error, reason}), do: {:error, "Error reading file: #{reason}"}

  #
  defp convert_and_evaluate_numbers(element) do
    element
    |> String.to_integer()
    |> evaluate_numbers()
  end

  #
  defp evaluate_numbers(number) when rem(number, 3) == 0 and rem(number, 5) == 0, do: :fizzbuzz
  defp evaluate_numbers(number) when rem(number, 3) == 0, do: :fizz
  defp evaluate_numbers(number) when rem(number, 5) == 0, do: :buzz
  defp evaluate_numbers(number), do: number
end
