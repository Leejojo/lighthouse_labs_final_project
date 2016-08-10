# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Quiz.create!([
  name: 'Olympics'
])

category_list = [
  [ 1, "History", "blue" ],
  [ 1, "Mascot", "black" ],
  [ 1, "Geography", "red" ],
  [ 1, "Winter Sports", "yellow" ],
  [ 1, "Summer Sports", "green" ]
]
category_list.each do |quiz_id, subject, color|
  Category.create!( quiz_id: quiz_id, subject: subject, color: color )
end


question_list = [
  [ 1, "Which year did Vancouver host the Winter Olympics?" ],
  [ 1, "Which year did Beijing host the Summer Olympics?" ],
  [ 1, "In which Olympics did the world-famous American boxer Muhammad Ali win the light heavyweight boxing title?" ],
  [ 2, "Vinicius is a mix of different Brazilian ______" ],
  [ 2, "Sochi had three mascots; The Hare, The Polar Bear and ______?" ],
  [ 2, "What kind of animal is Hodori, the mascot of Seoul 1988 Olympics?" ],
  [ 3, "Sochi is located in which country?" ],
  [ 3, "Lillehammer is locate in which country?" ],
  [ 3, "Nagano is located in which country?" ],
  [ 4, "What are the two sports that make up the Biathlon?" ],
  [ 4, "How many players are in a curling team?" ],
  [ 4, "Ice Hockey orginated from which country?" ],
  [ 5, "As of 2016, how many sports are played in the Summer Olympics?" ],
  [ 5, "The modern pentathlon comprises of pistol shooting, fencing, swimming, horse riding and ______?" ],
  [ 5, "Including the goalkeeper, how many football players from one team play at any given time?" ]
]
question_list.each do |category_id, text|
  Question.create!( category_id: category_id, text: text )
end


choice_list = [
  [ 1, "2010", true ], [ 1, "2006", false ], [ 1, "2014", false ], [ 1, "2002", false],
  [ 2, "2000", false ], [ 1, "2008", true ], [ 2, "2004", false ], [ 2, "2012", false],
  [ 3, "Tokyo 1964", false ], [ 3, "Montreal 1976", false ], [ 3, "London 1948", false ], [ 3, "Rome 1960", true], 
  [ 4, "cartoon characters", false ], [ 4, "animals", true ], [ 4, "celebrities", false ], [ 4, "historical figures", false ],
  [ 5, "The Leopard", true ], [ 5, "The Tiger", false ], [ 5, "The Seal", false ], [ 5, "The Raccoon", false], 
  [ 6, "Lion", false ], [ 6, "Tiger", true ], [ 6, "Bear", false ], [ 6, "Crane", false ],
  [ 7, "Norway", false ], [ 7, "South Korea", false ], [ 7, "Russia", true ], [ 7, "Japan", false ],
  [ 8, "Norway", true ], [ 8, "South Korea", false ], [ 8, "Russia", false ], [ 8, "Japan", false ],
  [ 9, "Norway", false ], [ 9, "South Korea", false ], [ 9, "Russia", false ], [ 9, "Japan", true ],
  [ 10, "horse-backing riding and archery", false ], [ 10, "speed skating and rifle shooting", false ], [ 10, "cross-country skiing and rifle shooting", true ], [ 10, "freestyle skiing and ski jump", false ],
  [ 11, "4", true ], [ 11, "3", false ], [ 11, "5", false ], [ 11, "6", false ], 
  [ 12, "Russia", false], [ 12, "Canada", true ], [ 12, "USA", false], [ 12, "Sweden", false ], 
  [ 13, "26", false ], [ 13, "28", true ], [ 13, "22", false ], [ 13, "32", false ],
  [ 14, "cycling", false ], [ 14, "sailing", false ], [ 14, "running", true ], [ 14, "golf", false ],
  [ 15, "9", false ], [ 15, "10", false ], [ 15, "8", false ], [ 15, "11", true ]
]
choice_list.each do |question_id, text, is_correct|
  Choice.create!( question_id: question_id, text: text, is_correct: is_correct )
end
