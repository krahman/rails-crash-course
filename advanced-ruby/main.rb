load 'person.rb'
load 'fibonacci.rb'
load 'library.rb'

p = Person.new("Khal")

# Person
puts p.name

# Distractable
p.distract

# Comparable
p1 = Person.new("Nevda")
p2 = Person.new("Deehan")
puts p1 > p2

# Fibonacci
puts "\nFibonacci"
f = Fibonacci.new
puts f.calc 1
puts f.calc 2
puts f.calc 10
puts f.calc 30
puts f.calc 100
puts f.calc 1000

# Library Forwardable
puts "\nForwardable"
lib = Library.new ["Ruby", "Rails"]
puts lib.size
puts lib.push "RoR"
puts lib.size

# Ancestor
puts "\nancestors"
puts Person.ancestors

puts "\nClass methods"
puts Person.methods
puts Person.methods(false)
puts Person.instance_methods(false)

# Class ancestors
puts "\nClass Ancestor"
puts Class.ancestors

# Introspection
puts "\nIntrospection"
isPerson = p.is_a? Person
isPersonObj = p.is_a? Object
isInstanceOf = p.instance_of? Person
isInstanceOfObj = p.instance_of? Object

puts "p is a Person (is_a), #{isPerson}."
puts "p is a Object (is_a), #{isPersonObj}."
puts "p is a Person (instance_of), #{isInstanceOf}."
puts "p is a Object (instance_of), #{isInstanceOfObj}."
