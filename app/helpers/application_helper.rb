module ApplicationHelper

	def populate_subjects(subjects)
		string = ""
		subjects.sort.each do |s|
			string << "<li id='#{s}' name='#{s}'>"
			string << "<a>"
			string << "<span class='glyphicon glyphicon-search'></span>"
			string << "<span class=\"label-icon\">  #{s}</span>"
			string << "</a>"
			string << "</li>"
		end
		string.html_safe
	end
end
