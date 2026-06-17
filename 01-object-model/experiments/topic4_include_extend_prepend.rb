module Greeting
  def hello
    "Hello from module"
  end
end

class IncludeExample
  include Greeting
end

class ExtendExample
  extend Greeting
end

class PrependExample
  prepend Greeting

  def hello
    "Hello from class"
  end
end

# include -> adds module methods as instance methods
puts IncludeExample.new.hello

# extend -> adds module methods as class methods
puts ExtendExample.hello

# prepend -> gives module methods priority over class methods
puts PrependExample.new.hello
