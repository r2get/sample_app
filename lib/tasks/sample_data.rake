namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "r2get",
                         email: "a@b.net",
                         password: "testtest",
                         password_confirmation: "testtest",
                         admin: true)



      users = User.all(limit: 6)
    50.times do
      content = Faker::Lorem.sentence(5)
      users.each { |user| user.microposts.create!(content: content) }
    end
end
end