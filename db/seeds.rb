# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first
require 'faker'

5.times do 
    employer = Employer.create!(company_name: Faker::Company.name, company_name_url: Faker::Company.name + '.com') 
    employer.create_user(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name, email: Faker::Name.last_name + Faker::Name.first_name + '@gmail.com', password: Faker::Internet.password, phone_number: Faker::PhoneNumber.phone_number, city: Faker::Address.city)
end

5.times do 
    username = Faker::Internet.username
    developer = Developer.create(
        resume_url: username + '/resume',
        linkedin_url: 'linkedin.com/' + username,
        github_url: 'github.com/' + username ,
        portfolio_url: username + '.com'
    )
end

5.times do 
    project = Project.create(
        developer_id: 1, 
        employer_id: 1, 
        project_name: Faker::Lorem.word, 
        project_desciption: Faker::Lorem.paragraph, 
        project_review: Faker::Lorem.sentences, 
        project_status: 'Complete', 
        plattform_desktop: Faker::Boolean.boolean, 
        plattform_mobile: Faker::Boolean.boolean, 
        platform_tablet: Faker::Boolean.boolean, 
        assets_text: Faker::Boolean.boolean, 
        assets_images: Faker::Boolean.boolean, 
        assets_videos: Faker::Boolean.boolean, 
        assets_audio: Faker::Boolean.boolean, 
        assets_database: Faker::Boolean.boolean, 
        due_date_less_then_month: Faker::Boolean.boolean, 
        due_date_one_month: Faker::Boolean.boolean, 
        due_date_three_month: Faker::Boolean.boolean, 
        due_date_plus_three_month: Faker::Boolean.boolean, 
        pages_landing_pages: Faker::Boolean.boolean, 
        pages_two_pages: Faker::Boolean.boolean
    )
end