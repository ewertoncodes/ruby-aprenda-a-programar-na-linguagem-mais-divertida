class Biblioteca
  attr_reader :livros

  def initialize
    @livros = {}
  end
  
  def adiciona(livro)
    @livros[livro.categoria] ||= []
    @livros[livro.categoria] << livro
  end

  def livros
    @livros.values.flatten
  end  
  
  # def adiciona(livro)
  #   @livros << livro
  # end    
end