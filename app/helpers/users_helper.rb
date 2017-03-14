module UsersHelper

	def pretty_print(user)
		string = ""
		string << "<h1>Welcome, #{user.first}!</h1>"
		string << "<h2>email: #{user.email}</h2>"
		string << "<h3>(use navigation bar to view courses, subjects, and instructors)</h3>"
		string.html_safe
	end

end
