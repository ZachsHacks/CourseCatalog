module CourseHelper
	def pretty_print_courses(courses)

		string = ""
		if courses.size == 0
			string << "<div class='courses text-center'> <h1> No Courses Found </h1> </div>"
		else
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
		end
		string.html_safe
	end

	def pretty_print_course(c)

		string = ""
		string <<"<div class='courses'>"
		string << "<h2 class='courses__name'>#{c.name} (#{c.code})"
		string << "</h2>"
		string << "<p class='courses__independent'>Independent Study: #{c.independent_study?}</p>"
		string << "<p class='courses__credits'>Credits #{c.credits}</p>" if c.credits != nil
		string << "<p class='courses__description'>Description: #{c.description}</p>"
		string << "</div>"

		string.html_safe
	end

	def add_enroll_button(course_id)
		string = ""
		string << render(:partial => 'courses/button', :locals => {:course_id => course_id.to_i}).to_s
		string
	end

end
