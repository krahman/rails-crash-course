load 'person.rb'
load 'fibonacci.rb'
load 'library.rb'
load 'user.rb'
load 'element.rb'
load 'echo.rb'

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

# Duck Typing
def write_with_time(file, info)
	if file.instance_of? File
		file.puts "#{Time.now} - #{info}"
	else
		raise ArgumentError
	end

	if file.respond_to?(:puts)
		file.puts "#{Time.now} - #{info}"
	else
		raise ArgumentError
	end
end

f = File.open("test.txt", "w")
write_with_time(f, "Hello, World!")
f.close

# Metaprogramming - define_method
user = User.new
puts user.can_create?
puts user.can_create!
puts user.can_update?
puts user.can_update!	
puts user.can_delete?
puts user.can_delete!

# Metaprogramming - class_eval
elm = Element.new("khal")
puts elm.name

# Metaprogramming - method_missing
echo = Echo.new
echo.hello