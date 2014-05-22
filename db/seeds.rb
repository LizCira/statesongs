State.delete_all
User.delete_all
Playlist.delete_all

state_names = ["Alabama",
"Alaska",
"Arizona",
"Arkansas",
"California",
"Colorado",
"Connecticut",
"Delaware",
"Florida",
"Georgia",
"Hawaii",
"Idaho",
"Illinois",
"Indiana",
"Iowa",
"Kansas",
"Kentucky",
"Louisiana",
"Maine",
"Maryland",
"Massachusetts",
"Michigan",
"Minnesota",
"Mississippi",
"Missouri",
"Montana",
"Nebraska",
"Nevada",
"New Hampshire",
"New Jersey",
"New Mexico",
"New York",
"North Carolina",
"North Dakota",
"Ohio",
"Oklahoma",
"Oregon",
"Pennsylvania",
"Rhode Island",
"South Carolina",
"South Dakota",
"Tennessee",
"Texas",
"Utah",
"Vermont",
"Virginia",
"Washington",
"West Virginia",
"Wisconsin",
"Wyoming"
]

state_capitals = ["Montgomery",
"Juneau",
"Phoenix",
"Little Rock",
"Sacramento",
"Denver",
"Hartford",
"Dover",
"Tallahassee",
"Atlanta",
"Honolulu",
"Boise",
"Springfield",
"Indianapolis",
"Des Moines",
"Topeka",
"Frankfort",
"Baton Rouge",
"Augusta",
"Annapolis",
"Boston",
"Lansing",
"Saint Paul",
"Jackson",
"Jefferson City",
"Helena",
"Lincoln",
"Carson City",
"Concord",
"Trenton",
"Santa Fe",
"Albany",
"Raleigh",
"Bismarck",
"Columbus",
"Oklahoma City",
"Salem",
"Harrisburg",
"Providence",
"Columbia",
"Pierre",
"Nashville",
"Austin",
"Salt Lake City",
"Montpelier",
"Richmond",
"Olympia",
"Charleston",
"Madison",
"Cheyenne",
]

state_names.each do |state_name|
  State.create({name: state_name })
end

# 5.times do

#   new_user = User.create({
#     name: Faker::Name.name,
#     email: Faker::Internet.email,
#     password_hash: "password123"
#     })
# end
