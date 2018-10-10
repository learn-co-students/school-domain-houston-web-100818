require 'pry'

class School
    attr_accessor :name, :roster

    def initialize(school_name)
        @name = name
        @roster = {}
    end 

    def add_student(student_name, grade)
        if @roster.has_key?(grade)
            @roster[grade] << student_name
        else
            @roster[grade] = [student_name]
        end
    end

    def grade(number)
        @roster[number]
    end

    def sort
        @roster.map do | grade, student_array |
            @roster[grade] = student_array.sort
        end
        @roster
    end
end