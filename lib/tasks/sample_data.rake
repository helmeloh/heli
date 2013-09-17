namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
   admin = User.create!(name: "Example User",
                 email: "example@hirner.at",
                 password: "foobar",
                 password_confirmation: "foobar")
           admin.toggle!(:admin)
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@hirner.at"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end