class Livro
  attr_accessor :valor
  attr_reader :isbn, :categoria, :autor, :titulo
  
  def initialize(titulo, autor, isbn, numeros_de_paginas, valor, categoria)
    @titulo = titulo
    @autor = autor
    @isbn = isbn
    @numeros_de_paginas = numeros_de_paginas
    @valor = valor
    @categoria = categoria
  end

  def to_s
    "Autor: #{@autor}, Números de Páginas: #{@numeros_de_paginas}, 
    ISBN: #{@isbn}, Categoria: #{@categoria}"
  end
  
  def eql?(outro_livro)
    @isbn == outro_livro.isbn
  end

  def hash
    @isbn.hash
  end
end