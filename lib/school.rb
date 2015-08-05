class School

require 'pry'

  attr_reader :school_name, :roster
  
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(name, level)
    if @roster.include?(level)
      @roster[level] << name
    else
      @roster[level] = []
      @roster[level] << name
    end
  end

  def grade(level)
    class_list = @roster.select { |grade| grade == level}
    class_list[level]
  end

  def sort
    sorted_roster = @roster.each do |grade|
      grade[1].sort!
    end
    sorted_roster
  end

end