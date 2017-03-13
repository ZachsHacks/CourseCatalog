module InstructorHelper
	def pretty_print_instructors(instructors)
		string = ""
		instructors.each do |prof|
			string << "Name: #{prof.first} #{prof.middle} #{prof.last}"
			string << "<br>"
			string << "Email: #{prof.email}"
			string << "<br>"
		end
		string.html_safe
	end
end
