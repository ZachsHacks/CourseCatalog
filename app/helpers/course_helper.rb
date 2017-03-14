module CourseHelper
	def pretty_print_courses(courses)
		string = ""
		courses.each do |c|
			string <<"<div class='courses'>"
			string << "<h2 class='courses__name'>#{c.name} (#{c.code})</h2>"
			string << "<p class='courses__independent'>Independent Study: #{c.independent_study?}</p>"
			string << "<p class='courses__credits'>Credits #{c.credits}</p>" if c.credits != nil
			string << "<p class='courses__description'>Description: #{c.description}</p>"
			string << "</div>"
		end
		string.html_safe
	end
end
