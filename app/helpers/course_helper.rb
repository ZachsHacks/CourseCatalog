module CourseHelper
	def pretty_print_courses(courses)
		string = ""
		courses.each do |c|
			string << "Course Name: #{c.name} (#{c.code}) <br> Independent Study: #{c.independent_study?}"
			string << "Credits #{c.credits}" if c.credits != nil
			string << "<br>"
			string << "Description: #{c.description}"
			string << "<br>"
		end
		string.html_safe
	end
end
