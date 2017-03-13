module CourseHelper
	def pretty_print_courses(courses)
		string = ""
		courses.each do |c|
			string << "Course Name: #{c.name} <br> Independent Study: #{c.independent_study?} <br> Code: #{c.code}"
			string << "Credits #{c.credits}" if c.credits != nil
			string << "<br>"
			string << "Description: #{c.description}"
			string << "<br>"
		end
		string.html_safe
	end
end
