# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
3.times do |topic|
	Topic.create!(
		title: "Topic #{topic}"
		)
end


10.times do |blog| 
	Blog.create!(
		titile: "My Blog Post #{blog}", 
		body: "ur Rubyist instinct quickly sees some redundancy in there: If classes were defined 
		in files matching their name, couldn't their loading be automated somehow?
		 We could save scanning the file for dependencies, which is brittle.
		 Moreover, Kernel#require loads files once, but development is much more 
		 smooth if code gets refreshed when it changes without restarting the server. 
		 It would be nice to be able to use Kernel#load in development, and Kernel#require in production.",
		 topic_id: Topic.last.id
		)
end

puts "10 blogs created"

5.times do |skills|
	Skill.create!(
		title: "Rails #{skills}",
		percent_utilized: 15
		)
end

puts "5 skills created"

8.times do |portfolio_item|
	Portfolio.create!(
		title: "Portfolio title: #{portfolio_item}",
		subtitle: "Ruby on Rails",
		body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut 
		labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris 
		nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit
		esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt 
		in culpa qui officia deserunt mollit anim id est laborum.",
		main_image: "http://via.placeholder.com/600x400",
		thumb_image: "http://via.placeholder.com/350x200"
		)
end

8.times do |portfolio_item|
	Portfolio.create!(
		title: "Portfolio title: #{portfolio_item}",
		subtitle: "Angular",
		body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut 
		labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris 
		nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit
		esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt 
		in culpa qui officia deserunt mollit anim id est laborum.",
		main_image: "http://via.placeholder.com/600x400",
		thumb_image: "http://via.placeholder.com/350x200"
		)
end

puts "9 portfolios created"

3.times do |technology|
	Portfolio.last.technologies.create!(
		name: "Technology #{technology}"
		)
end


puts "3 technologies created"







