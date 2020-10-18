> # Fizzbuzz

O projeto **FizzBuzz** faz alterações em uma lista de números, contida em um arquivo de texto, da seguinte forma:

 - Números múltiplos de 3, substituir por *fizz*,
 - Números múltiplos de 5, substituir por *buzz*,
 - Números múltiplos de 3 e 5, substituir por *fizzbuzz*,
 - Nem múltiplos de 3 ou 5, repeti-los.

Este módulo aplica vários conceitos da linguagem ```Elixir```, como pattern matching, guards, testes de funções e sintaxe da linguagem.

## Uso
```
  numbers = 0,1,2,3,4,5,6,7,8,9
  iex> Fizzbuzz.build("numbers.txt")
  iex> {:ok, [:fizzbuzz, 1, 2, :fizz, 4, :buzz, :fizz, 7, 8, :fizz]}
    
 ```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `fizzbuzz` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:fizzbuzz, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/fizzbuzz](https://hexdocs.pm/fizzbuzz).

