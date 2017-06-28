class School
	attr_accessor :roster
	attr_accessor :school_name

	def initialize(school_name)
		@school_name = school_name
		@roster = {}
	end

	def add_student(student, grade)
		@roster[grade] ||= []
		@roster[grade] << student

		@roster[grade]
	end

	def grade(grade)
		@roster[grade]
	end

	def sort
		@roster.values.each {|student_list| student_list.sort!}
		@roster
	end

end