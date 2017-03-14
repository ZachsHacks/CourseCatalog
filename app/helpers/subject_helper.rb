module SubjectHelper

	def pretty_print_subjects(subjects)
		string = ""
		subjects.each do |s|
			string << "<p class='subject'>#{s.name}</p>"
		end
		string.html_safe
	end

end
