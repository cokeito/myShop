# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all
Product.destroy_all

celphone 	= Category.create(name: 'Celphone')
tablet 		= Category.create(name: 'Tablets')
laptop 		= Category.create(name: 'Laptops')

#coke.tweets.build(content: 'ola k ase' ).save

	celphone.products.build(name: 'Samsung S7', price: 799000).save
	prd1 	= Product.create!(name:'Samsung S6', price:599000, category:celphone)
	Product.where(category_id: celphone.id).last.destroy


	tablet.products.build(name: 'Ipad', price:650000).save
	prd2	= Product.create!(name:'Ipad Air', price:719000, category:tablet)
	Product.where(category_id: tablet.id).last.destroy


	laptop.products.build(name: 'Lenovo ABC1', price:340000).save
	prd3	= Product.create!(name: 'Macbook Air', price:999000, category:laptop)
	Product.where(category_id: laptop.id).last.destroy

	#ultmo producto a premium

	l = Product.last
	l.premium = true
	l.save

	x = Category.all
	x.each do |p| puts p.name = p.name.upcase ; p.save; end

