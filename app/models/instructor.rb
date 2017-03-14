class Instructor < ApplicationRecord

	def username
		if self.email == nil
			"N/A"
		else
			username = self.email.to_s.split("@")
			username[0]
		end
	end
end
