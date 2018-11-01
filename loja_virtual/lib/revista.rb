require 'bundler/setup'
require 'my_active_file'

class Revista
  include MyActiveFile

  field :titulo
  field :valor
end