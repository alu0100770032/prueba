# = matriz.rb
# Autor:: David Lazaro
# == Descripcion
# Esta clase representa una matriz de personas y una matriz de strings
# Se pueden incluir persionas  y obtener la lista de las personas
class Matriz
  # Se inicializa
  def initialize (&block)
    @matriz = []
    @personas = []
    if block_given?
      if block.arity == 1
        yield self
      else
        instance_eval(&block)
      end
    end
  end
# Se incluyen nuevos string en la matriz
  def add(element) 
    @matriz << element
  end

# Se obtiene el listado de strings
  def to_s
    @matriz.to_s
  end
# Se obtiene el listado de personas
  def to_s_personas
    output = "Persona:\n"
    @personas.each do |persona|
        output << persona + "\n"
    end
    output
  end
  # Se incluyen personas en la lista de personas
  def persona(nombre, options = {})
    persona = ""
    persona << " [#{options[:peso]}] " if options[:peso]
    persona << "" + nombre + " : "
    persona << "#{options[:altura]} " if options[:ojos]
    persona << "#{options[:ojos]} " if options[:ojos]
    persona << "#{options[:pelo]} " if options[:ojos]
    persona << "#{options[:pie]}" if options[:ojos]
    
    @personas << persona
end
end