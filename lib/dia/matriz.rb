class Matriz
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

  def add(element) 
    @matriz << element
  end
  def to_s
    @matriz.to_s
  end
  def to_s_personas
    output = "Producto:\n"
    @personas.each do |persona|
        output << persona + "\n"
    end
    output
  end
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