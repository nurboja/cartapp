# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.destroy_all
Category.destroy_all
5.times do |i|
Category.create!(name: "Category #{i}")
end

broj = 1
Category.all.each do |cat|
3.times do |i|
cat.products.create!(
			title: "Product #{broj}",
			description: "Opis proizvoda #{i}",
			picture_url: "image.png",
			price: 100,
			category_id: 1
)
broj +=1
end
end