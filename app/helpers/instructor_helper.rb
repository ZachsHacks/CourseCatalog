module InstructorHelper
	def pretty_print_instructors(instructors)
		string = ""
		instructors.each do |prof|
			string << "<div class='instruct__container'>"
			string << "<p class='instruct__name'>#{prof.first} #{prof.middle} #{prof.last}</p>"
			string << "<p class='instruct__email'><span class='username'>#{prof.username}</span>@brandeis.edu</p>"
			string << "</div>"
		end
		string.html_safe
	end
end
