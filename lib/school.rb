class School
    attr_accessor :name, :roster

    def initialize(name)
      @name = name
      @roster = {}
    end

    def add_student(name, grade)
      @roster[grade] ||= []
      @roster[grade].push(name)
    end

    def grade(number)
      @roster[number]
    end

    def sort
        sorted = {}
        roster.each do |grade, students| 
            sorted[grade] = students.sort
        end
        sorted

        
    end

end