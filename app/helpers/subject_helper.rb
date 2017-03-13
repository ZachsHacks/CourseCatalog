module SubjectHelper
	def pretty_print_subjects(subjects)
		string = ""
		subjects.each do |s|
			string << "#{s.name}"
			string << "<br>"
		end
		string.html_safe
	end
end
