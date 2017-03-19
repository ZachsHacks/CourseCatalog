require 'json'

def burn_down_the_house
	Course.destroy_all
	Instructor.destroy_all
	Subject.destroy_all
	Listing.destroy_all
end

def seed_courses
	json = JSON.parse(File.read('db/seeds/course.json'))

	json.each do |course|
		c = Course.create(name: course["name"], independent_study: course["independent_study"], code: course["code"], description: course["description"])
		seed_listing(c.id, course)
	end

end

def seed_instructors
	json = JSON.parse(File.read('db/seeds/instructor.json'))

	json.each do |instructor|
		Instructor.create(first: instructor["first"], middle: instructor["middle"], last: instructor["last"], email: instructor["email"])
	end
end

def seed_subjects
	json = JSON.parse(File.read('db/seeds/subject.json'))

	json.each do |a|
		Subject.create(name: a["name"], subject_id: a["id"])
	end

end

def seed_listing(course_id, course)
	subjects = course['subjects']
	subjects.each do |subject|
		subject_that_exists = Subject.find_by(subject_id: subject['id'])
		Listing.find_or_create_by(course_id: course_id, subject_id: subject_that_exists.id) if subject_that_exists
	end

end

def seed_test_user
	u = User.create(first: "Zach", middle: "Shale", last: "Weiss", email: "abc@gmail.com", password: "123", password_confirmation: "123")
	(50).times do
		Enrollment.find_or_create_by(course_id: rand(Course.count), user_id: u.id)
	end
end

burn_down_the_house
seed_subjects
seed_courses
seed_instructors
seed_test_user
