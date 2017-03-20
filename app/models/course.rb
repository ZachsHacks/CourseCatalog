class Course < ApplicationRecord

	has_many :listings
	has_many :subjects, through: :listings

	has_many :enrollments
	has_many :users, through: :enrollments

	def independent_study?
		if (self.independent_study == true)
			"Yes"
		else
			"No"
		end
	end

	def self.search(params)
		# byebug
		if params
    	where('lower(name) LIKE ?  OR code LIKE ?', "%#{params.downcase}%" , "%#{params.upcase}%").order('id DESC')
  	else
    	order('id DESC')
  	end
	end
end
