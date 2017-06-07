# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
Restaurant.destroy_all
5.times do
cat = ["chinese", "italian", "japanese", "french", "belgian"]
  post = Restaurant.new(

    name: Faker::Company.name,
    category: cat.sample,
    address: Faker::Internet.email,
     phone_number: Faker::PhoneNumber.cell_phone
    )

  post.save

end
