class Instructor < ApplicationRecord

	def username
		username = self.email.to_s.split("@")
		username[0]
	end
end
