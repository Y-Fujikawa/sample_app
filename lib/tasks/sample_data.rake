namespace :db do
  desc "Fill database with sample data"
  task  populate: :environment do
    User.create!(name: "Example User",
                 email: "test@test.jp",
                 password: "testtest",
                 password_confirmation: "testtest",
                 admin: true)
    99.times do |n|
      name = Faker::Name.name
      email = "esample-#{n+1}@railstutorial.jp"
      password = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end
