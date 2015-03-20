# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
categories = [
	[1,'welder'],
	[2,'carpenter'],
	[3,'electrician'],
	[4,'plumber'],
	[5,'generator technician'],
	[6,'automobile mechanic'],
	[7,'a/c technician'],
	[8,'cleaning services'],
	[9,'bead makers'],
	[10,'catering services'],
	[11,'events planner'],
	[12,'painter'],
	[13,'hairdresser'],
	[14,'barber'],
	[15,'interior decorators'],
	[16,'photographer'],
	[17,'computer repairs']
]
categories.each do |index, category|
	Category.create!(index: "#{index}", name: "#{category}")
end