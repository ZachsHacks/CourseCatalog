class Course < ApplicationRecord

	def independent_study?
		if (self.independent_study == true)
			"Yes"
		else
			"No"
		end
	end
end
