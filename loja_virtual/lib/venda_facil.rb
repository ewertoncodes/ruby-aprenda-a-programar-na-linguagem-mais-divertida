module VendaFacil
  class Set
    def initialize
      @livros = ::Array.new
      @banco_de_arquivos = BancoDeArquivos.new
    end
  end
end 