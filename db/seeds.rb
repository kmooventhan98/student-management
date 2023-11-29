# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
student = Student.create(first_name: 'mooventhan',last_name: 'k',email: 'kmooventhan98@gmail.com')

20.times do |i|
	puts "student #{i+1} is created successfully"
	Student.create(first_name: "stu #{i+1}", last_name: "lname #{i+1}", email: "stu#{i+1}@gmail.com")
end