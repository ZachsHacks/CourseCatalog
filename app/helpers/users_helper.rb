module UsersHelper

	def pretty_print_user(user)
		string = ""
		string << "<h1>Welcome, #{user.first} #{user.last}!</h1>"
		string << "<h2>contact: #{user.email}</h2>"
		string.html_safe
	end

	def pretty_print_enrollments(enrollments)
		string = ""
		enrollments.sort_by {|e| Course.find(e.course_id).code}.each do |e|
			course = Course.find(e.course_id)
			string << "<h3><a href='/courses/#{e.course_id}'> #{course.name} (#{course.code})</a></h3>"
			string << add_enroll_button(e.course_id, false)
		end
		string.html_safe
	end

end
