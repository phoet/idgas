# Open up Object to add handling of +?+.
class Object
  
  # Save a reference to original +method_missing+.
  alias m_m method_missing

  # Catches all calls that were intended to go to the real object ending with +?+.
  # The question-mark is stripped and the call is processed again.
  # Calls without a question-mark are send to the original +method_missing+.
  def method_missing(sym,*args, &block)
    method_name = sym.to_s
    if /.+\?$/ =~ method_name
      puts "object '#{sym}' '#{args}' '#{block}'"
      send(method_name[0..-2], *args, &block)
    else
      puts "object missing '#{sym}' '#{args}' '#{block}'"
      m_m(sym,*args, &block)
    end
  end
end

# Open up Nil to add handling of +?+.
class NilClass

  # Catches all calls that were put on nil references ending with +?+ returning nil again.
  # Calls without a question-mark are send to original +method_missing+.
  def method_missing(sym,*args, &block)
    method_name = sym.to_s
    if /.+\?$/ =~ method_name
      puts "nil '#{sym}' '#{args}' '#{block}'"
      self
    else
      puts "nil missing '#{sym}' '#{args}' '#{block}'"
      super.m_m(sym,*args, &block)
    end
  end
end