namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "r2get",
                         email: "a@b.net",
                         password: "testtest",
                         password_confirmation: "testtest",
                         admin: true)

  end
end