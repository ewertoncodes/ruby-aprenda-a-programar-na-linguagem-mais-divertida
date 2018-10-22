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
