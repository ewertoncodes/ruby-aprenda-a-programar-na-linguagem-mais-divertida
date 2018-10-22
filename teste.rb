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

module Pluralizer
  refine String do
    def plural
      "#{self}s"
    end
  end
end

class Relatorio
  using Pluralizer
  puts "Relatorio".plural
end