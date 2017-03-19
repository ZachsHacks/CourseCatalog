module SubjectHelper

	def pretty_print_subjects(subjects)
		string = ""
		subjects.sort_by {|s| s.name}.each do |s|
			string << "<p class=\"subject_name\"> #{link_to(s.name, s).to_s} </p>"
		end
		string.html_safe
	end

end
