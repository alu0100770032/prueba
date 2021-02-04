class Matriz
  def initialize (&block)
    @matriz = []
    @n = 0
    @m = 0
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


end