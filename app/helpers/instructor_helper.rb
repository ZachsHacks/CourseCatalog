module InstructorHelper
	def pretty_print_instructors(instructors)
		string = ""
		instructors.each do |prof|
			string << "#{prof.first} #{prof.middle} #{prof.last}"
			string << "<br>"
		end
		string.html_safe
	end
end
