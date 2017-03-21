module ApplicationHelper

	def populate_subjects(subjects)
		string = ""
		subjects.sort.each do |s|
			string << "<li id='#{s}'>"
			string << "<a>"
			string << "<span id='blah' class=\"label-icon\">#{s}</span>"
			string << "</a>"
			string << "</li>"
		end
		string.html_safe
	end
end
