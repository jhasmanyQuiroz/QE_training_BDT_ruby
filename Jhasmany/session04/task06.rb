=begin
  Let’s consider you are in a new team:
    Define which code guideline you would suggest for:
      Format (int, float, string)
      Classes
      Methods
      Variables, Getter/Setter
      If condition
  Please Add your suggestion and define one example for each one.
=end

Format:
  "Each variable must have defined its type and start with a letter:
    int number, float price
  "

Classes:
  "All class must be upper case and singular and each class must be in a file:
    class Person
    end
  "
  "All class must have defined its attributes with accessors:
    class Person
      attr_accessor :name
      attr_accessor :year
    end
  "

Methods:
  "Each mehod must define its type of return, the name must be lower case and
   and must have parenthesis if has parameters:
    def getLastPerson(name)
      return last
    end
  "

Variables:
  "Each variable must start with a letter, must be lower case:
    int number, float priceOfTicket
  "
IF-Condition:
  "Each 'if' must have its else and parenthesis:
    if(year < 2017)
      year += 1
    else
      year +=1
    end
  "
