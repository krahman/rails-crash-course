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
f = Fibonacci.new
puts f.calc 1
puts f.calc 2
puts f.calc 10
puts f.calc 30
puts f.calc 100
puts f.calc 1000

# Library Forwardable
lib = Library.new ["Ruby", "Rails"]
puts lib.size
puts lib.push "RoR"
puts lib.size