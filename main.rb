#Clase Madre
class Person
  attr_accessor :first_name, :last_name, :age

  def initialize(first, last, age)
    @first_name = first
    @last_name = last
    @age = age
  end

  def introduce
    puts "Hola, mi nombre es #{@first_name} #{@last_name}."
  end
end

#Sub Clase Hijo
class Student < Person
  def talk
    puts "¿Aquí es la clase de programación con Ruby?"
    
  end

  def introduce
    super
    puts "Soy un estudiante."
    
  end
end

class Teacher < Person
  def talk
    puts "¡Bienvenidos a la clase de programación con Ruby!"
    
  end

  def introduce
    super
    puts "Soy un profesor."
    
  end
end

class Parent < Person
  def talk
    puts "¿Aquí es la reunión de apoderados?"
  end

  def introduce
    super
    puts "Soy un apoderado."
  end
end

#Nuevas Intancias
student = Student.new("Juan", "Pérez", 18)
student.introduce
student.talk

teacher = Teacher.new("María", "Gómez", 35)
teacher.introduce
teacher.talk

parent = Parent.new("Carlos", "Rodríguez", 40)
parent.introduce
parent.talk
