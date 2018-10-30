class DVD < Midia
  def initialize(titulo, valor, categoria)
    super()
    @titulo    = titulo
    @valor     = valor
    @categoria = categoria
  end
end