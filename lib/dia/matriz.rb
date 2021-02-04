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
   
  end
  def persona(nombre, options = {})
   
end
end