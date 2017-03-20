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
				string << add_enroll_button(c.id, true) if logged_in?
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

	def add_enroll_button(course_id, choice)
		string = "<div id='div1'>"
		# string << "<form action=\"http://google.com\">"
		if choice
			string << "<form action=\"#{enrollments_create_path(course_id, current_user.id)}\" method=\"post\">"
			string << "<button type='submit' id='user' name='enroll' value=\"#{course_id}\" data-remote='true' class='btn btn-secondary'>Enroll</button>"
			string << '</form>'
		else
			string << "<form action=\"#{enrollments_destroy_path(course_id, current_user.id)}\" method=\"post\">"
			string << "<button type='submit' id='user' name='enroll' value=\"#{course_id}\" data-remote='true' class='btn btn-secondary'>Unenroll</button>"
			string << '</form>'
		end
		string << "</div>"

		string
	end
end
