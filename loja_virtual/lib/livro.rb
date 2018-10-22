class Livro
  attr_accessor :valor
  
  def initialize(autor, isbn, numeros_de_paginas)
    @autor = autor
    @isbn = isbn
    @numeros_de_paginas = numeros_de_paginas
    @preco = valor
  end

  def to_s
    "Autor: #{@autor}, Números de Páginas: #{@numeros_de_paginas}, ISBN: #{@isbn}"
  end  
end