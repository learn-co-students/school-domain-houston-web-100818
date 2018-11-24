require 'pry'

class School

    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end


    def add_student(name, grade)
        if @roster.has_key?(grade)
            @roster[grade] << name #checking to see if grade key already exists; inputting name 
        else
            @roster[grade] = [name] #setting up key, value pair; adding brackets [] inputs value as array
        end
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        roster.map do |grade, student|
            student.sort!
        end
        roster
    end


end

#student.sort!