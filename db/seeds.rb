require 'json'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def burn_down_the_house
	Course.destroy_all
	Instructor.destroy_all
	Subject.destroy_all
end

def seed_courses
	json = JSON.parse(File.read('db/seeds/course.json'))

	json.each do |course|
		Course.create(name: course["name"], independent_study: course["independent_study"], code: course["code"], description: course["description"])
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
		Subject.create(name: a["name"])
	end

end

burn_down_the_house
seed_courses
seed_instructors
seed_subjects
