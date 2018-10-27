# age = 27
# puts age
# puts age.class

# sum = "2" + idade
# puts sum

# def plural word
#   "#{word}s"
# end
# puts plural 'ball'

# class String
#   def plural
#     "#{self}s"
#   end
# end

# puts "teste".plural  

# class Integer
#   def +(number)
#     self - number
#   end
# end

# puts 10 + 2

# module Pluralizer
#   refine String do
#     def plural
#       "#{self}s"
#     end
#   end
# end

# class Relatorio
#   using Pluralizer
#   puts "Relatorio".plural
# end

# Esteja atento, pois deve ser respeitada a regra de começálas
#com letras, $ ou _.

# 1 = "ewerton" => não funciona
# nome = "ewerton" => funciona
#$nome = "ewerton" => funciona
#_nome = "Ewerton" => funciona


=begin
  puts telefone_celular = "(84)3333-33333"
=end

# puts habitantes = 7000_000_000
# puts peso = 79.0

# puts nome_completo = 'Ewerton Nascimento'
# puts twitter = "@ewertonorg"


# nome_com_aspas_simples = 'Joana d'Arc' # não funciona
# nome_com_aspas_duplas = "Joana d'Arc" # funciona


# nome = "Joana d'Arc"
# puts boas_vindas = "Seja bem vinda(o) #{nome}" 

# puts 'mensagem' # => mensagem
# puts "#{sleep 1} mensagem" # => mensagem

# idade = 27
# nome = "Ewerton"
# if idade > 18
#   puts nome
# end  

# puts nome if idade > 18

#nome = nil
#puts "Seja bem vindo #{nome}" if not nome.nil?
# puts "Seja bem vindo #{nome}" unless nome.nil?
# puts "Seja bem vindo #{nome}" if nome

# for numero in (1..100)
#   puts "Numero: #{numero}"
# end  

# numero = 0 
# while numero <= 100
#   puts "Numero:#{numero}"
# end

#   numero +=1
# until numero == 100
#   puts "Numero:#{numero}"
#   numero +=1
# end  

# nome = "Linguagem Ruby"
# isbn = "123-45678901-2"
# numeros_de_paginas = 245
# preco = 69.90

# desconto = 0.1
# preco_com_desconto = preco - (preco * desconto)

# nome = "Test Driven Development: Teste e Design no Mundo Real"
# isbn = "342-65675751-1"
# numero_paginas = 212
# preco = 89.90
# desconto = 0.1

# def preco_com_desconto preco, desconto
#   valor = preco - (preco * desconto)
#   valor.round(2)
# end

# puts preco_com_desconto preco, desconto

# class Livro
#   def initialize(escritor, numeros_de_paginas, isbn)
#     puts "Escritor #{escritor}, Números: #{numeros_de_paginas}, ISBN:#{isbn}"
#   end
# end

# teste_e_design = Livro.new "Mauricio Aniche", 247, "123456"
# web_design_responsivo = Livro.new "Tarcio Zemel", 189, "1233213"

# numeros = [1, 2, 3]
# puts numeros[0]
# puts numeros[1]
# puts numeros[2]

# puts numeros.first
# puts numeros.last

# numeros << "Olá"
# puts numeros

# def multiplica_ultimo_numero_por_2(numeros)
#   puts 2 * numeros.first
# end  

# multiplica_ultimo_numero_por_2 numeros

# biblioteca = Biblioteca.new

# teste_e_design = Livro.new "Mauricio Aniche","123454", 247, 70.5
# web_design_responsivo = Livro.new "Tárcio Zemel", "452565", 189, 67.9