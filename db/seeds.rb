# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Content.delete_all

Content.create(
  :name => 'home',
  :location => 'home/index')

Content.create(
  :name => 'contact',
  :location => 'contact/index')

Content.create(
  :name => 'about_us',
  :location => 'about_us/index')