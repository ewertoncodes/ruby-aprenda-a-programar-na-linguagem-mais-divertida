require "fileutils"
require 'yaml'
require 'brnumeros'


module ActiveFile
  def save
    @new_record = false
    File.open("db/revistas/#{@id}.yml", 'w') do |file|
      file.puts serialize
    end
  end

  def destroy
    return unless @destroyed || @new_record
    @destroyed = true
    FileUtils.rm "db/revistas/#{@id}.yml"
  end

  module ClassMethods
    def field(name, required: false, default: '')
      @fields ||= []
      @fields << Field.new(name, required, default)
      class_eval %$
          attr_accessor *#{@fields.map(&:name)}
          attr_reader :id, :destroyed, :new_record
          def initialize(#{@fields.map(&:to_argument).join(', ')})
              @id = self.class.next_id
              @destroyed = false
              @new_record = true
              #{@fields.map(&:to_assign).join("\n")}
          end    $
    end

    def find(id)
      unless File.exist?("db/revistas/#{id}.yml")
        raise DocumentNotFound, "Arquivo #{id} não encontrado.", caller
      end
      YAML.load File.open("db/revistas/#{id}.yml", 'r')
    end

    def next_id
      Dir.glob('db/revistas/*.yml').size + 1
    end

    def method_missing(name, *args, &block)
      field = name.to_s.split('_').last
      super if @fields.map(&:name).include? field
      load_all.select do |object|
        object.send(field) == args.first
      end
    end

    private

    def load_all
      Dir.glob('db/revistas/*.yml').map do |file|
        deserialize file
      end
    end

    def deserialize(file)
      YAML.load File.open(file, 'r')
    end
  end

  class Field
    attr_reader :name, :required, :default

    def initialize(name, required, default)
      @name     = name
      @required = required
      @default  = default
    end

    def to_argument
      "#{@name}: #{@default}"
    end

    def to_assign
      "@#{@name} = #{@name}"
    end
  end

  def self.included(base)
    base.extend ClassMethods
  end

  private

  def serialize
    YAML.dump self
  end
end