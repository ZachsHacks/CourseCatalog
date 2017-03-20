class Course < ApplicationRecord

	has_many :listings
	has_many :subjects, through: :listings

	def independent_study?
		if (self.independent_study == true)
			"Yes"
		else
			"No"
		end
	end

	def self.search(params)
		if params
    	where('name LIKE ?  OR code LIKE ?', "%#{params}%" , "%#{params}%").order('id DESC')
  	else
    	order('id DESC')
  	end
	end
end
