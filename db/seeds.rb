# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
  email: ENV.fetch('ADMIN_EMAIL'),
  password: ENV.fetch('ADMIN_PASSWORD'),
  password_confirmation: ENV.fetch('ADMIN_PASSWORD'),
  name: ENV.fetch('ADMIN_NAME'),
  roles: ENV.fetch('ADMIN_ROLES')
)

puts "1 Admin User Created!"

topics = ["Rails", "Ruby", "Web Development", "Daily Life", "Python"]

topics.each do |topic|
  Topic.create!(
    title: "#{topic}"
  )
end

puts "5 topics created"


Blog.create!(
  title: "My Blog First Post",
  body: "Hello to all! This is my first official post on my new website. I am excited for the world to see what I have worked on for a bit and will for sure continue to improve as I learn new technologies. So far on my journey I have made small projects and this is the biggest one I have made because I have learned how to make this website with clean code and learning alot through the process. So stay and explore my work and keep checking in because I will continue to improve this website.",
  topic_id: 3
)


puts "1 blog created"

skills = {
  "Ruby on Rails" => 80,
  "Python" => 40,
  "JavaScript" => 40,
  "Ruby" => 65,
  "PostgreSQL" => 55
}

skills.each do |key, value|
  Skill.create!(
    title: "#{key}",
    percent_utilized: value
  )
end

puts "5 skills created"

2.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio: #{portfolio_item}",
    subtitle: "Ruby on Rails",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200"

  )
end

puts "2 Portfolios created, Rails subtitle"

1.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio: #{portfolio_item}",
    subtitle: "Angular",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200"

  )
end

puts "1 Portfolio created, Angular subtitle"

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "Technology #{technology}",
  )
end

puts "3 technologies created"
