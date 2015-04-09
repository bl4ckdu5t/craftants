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
cities = [
	['Agbado/Oke-Odo','Lagos','Nigeria'],
	['Agboyi/Ketu','Lagos','Nigeria'],
	['Agege','Lagos','Nigeria'],
	['Alimosho','Lagos','Nigeria'],
	['Amuwo Odofin','Lagos','Nigeria'],
	['Apapa','Lagos','Nigeria'],
	['Apapa-Iganmu','Lagos','Nigeria'],
	['Ayobo/Ipaja','Lagos','Nigeria'],
	['Badagry','Lagos','Nigeria'],
	['Egbe Idimu','Lagos','Nigeria'],
	['Eti Osa East','Lagos','Nigeria'],
	['Ifako Ijaye','Lagos','Nigeria'],
	['Igando/Ikotun','Lagos','Nigeria'],
	['Ikeja','Lagos','Nigeria'],
	['Ikorodu','Lagos','Nigeria'],
	['Ikoyi-Obalende','Lagos','Nigeria'],
	['Iru/Victoria Island','Lagos','Nigeria'],
	['Isolo','Lagos','Nigeria'],
	['Kosofe','Lagos','Nigeria'],
	['Lekki','Lagos','Nigeria'],
	['Lagos Island East','Lagos','Nigeria'],
	['Lagos Island West','Lagos','Nigeria'],
	['Lagos Mainland','Lagos','Nigeria'],
	['Mushin','Lagos','Nigeria'],
	['Ojo','Lagos','Nigeria'],
	['Ojodu','Lagos','Nigeria'],
	['Oshodi','Lagos','Nigeria'],
	['Shomolu','Lagos','Nigeria'],
	['Surulere','Lagos','Nigeria'],
	['Yaba','Lagos','Nigeria'],
]
=begin
categories.each do |index, category|
	Category.create!(index: "#{index}", name: "#{category}")
end
=end
cities.each do |city, state, country|
	Location.create!(city: "#{city}", state: "#{state}",country: "#{country}")
end