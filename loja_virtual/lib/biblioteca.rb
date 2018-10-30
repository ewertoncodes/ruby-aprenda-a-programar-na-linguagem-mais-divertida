class Biblioteca
  attr_reader :livros

  include Enumerable

  def initialize
    @banco_de_arquivos = BancoDeArquivos.new
  end
  
  def adiciona(midia)
    salva midia do
      midias << midia
    end if midia.kind_of? Midia
  end
  
  def midias_por_categoria(categoria)
    midias.select { |midia| midia.categoria == categoria }
  end
  
  def midias
    @midias ||= @banco_de_arquivos.carrega
  end
  
  def each
    midias.each { |midia| yield midia }
  end

  def salva(midia)
    @banco_de_arquivos.salva midia
    yield
  end
end