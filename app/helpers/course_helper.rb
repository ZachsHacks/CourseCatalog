module CourseHelper
	def pretty_print_courses(courses)
		string = ""
		courses.sort_by {|c| c.code}.each do |c|
			string <<"<div class='courses'>"
			string << "<h2 class='courses__name'>#{c.name} (#{c.code})"
			string << "</h2>"
			string << "<p class='courses__independent'>Independent Study: #{c.independent_study?}</p>"
			string << "<p class='courses__credits'>Credits #{c.credits}</p>" if c.credits != nil
			string << "<p class='courses__description'>Description: #{c.description}</p>"
			string << add_enroll_button(c.id) if logged_in?
			string << "</div>"
		end
		string.html_safe
	end

	def add_enroll_button(course_id)
		string = "<div id='div1'>"
		# string << "<form action=\"http://google.com\">"
		string << "<button type='button' id='user' name='enroll' value=\"#{course_id}\" data-remote='true' class='btn btn-secondary'>Enroll</button>"
		# string << "</form>"
		string << "</div>"

		string
	end
end
