# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Quiz.destroy_all

categories_attributes = [
  {subject: "History", color: "blue", questions_attributes: [
    {text: "Which year did Vancouver host the Winter Olympics?", choices_attributes: [
      {text: "2010", is_correct: true}, 
      {text: "2006", is_correct: false}, 
      {text: "2014", is_correct: false}, 
      {text: "2002", is_correct: false}
      ]
    }, 
    {text: "Which year did Beijing host the Summer Olympics?", choices_attributes: [
      {text: "2000", is_correct: false}, 
      {text: "2008", is_correct: true}, 
      {text: "2004", is_correct: false}, 
      {text: "2012", is_correct: false}
      ] 
    }, 
    {text: "In which Olympics did the world-famous American boxer Muhammad Ali win the light heavyweight boxing title?", choices_attributes: [
      {text: "Tokyo 1964", is_correct: false},
      {text: "Montreal 1976", is_correct: false},
      {text: "London 1948", is_correct: false},
      {text: "Rome 1960", is_correct: true}
      ]
    }
  ]},
  {subject: "Mascot", color: "black", questions_attributes: [
    {text: "Vinicius is a mix of different Brazilian ______", choices_attributes: [
      {text: "cartoon characters", is_correct: false},
      {text: "animals", is_correct: true},
      {text: "celebrities", is_correct: false},
      {text: "historical figures", is_correct: false}
    ]},
    {text: "Sochi had three mascots; The Hare, The Polar Bear and ______?", choices_attributes: [
      {text: "The Leopard", is_correct: true},
      {text: "The Tiger", is_correct: false},
      {text: "The Seal", is_correct: false},
      {text: "The Raccoon", is_correct: false}
    ]},
    {text: "What kind of animal is Hodori, the mascot of Seoul 1988 Olympics?", choices_attributes: [
      {text: "Lion", is_correct: false},
      {text: "Tiger", is_correct: true},
      {text: "Panda Bear", is_correct: false},
      {text: "Crane", is_correct: false}
    ]},
  ]},
  {subject: "Geography", color: "red", questions_attributes: [
    {text: "Sochi is located in which country?", choices_attributes: [
      {text: "Norway", is_correct: false},
      {text: "South Korea", is_correct: false},
      {text: "Russia", is_correct: true},
      {text: "Japan", is_correct: false}
    ]},
    {text: "Lillehammer is located in which country?", choices_attributes: [
      {text: "Norway", is_correct: true},
      {text: "South Korea", is_correct: false},
      {text: "Russia", is_correct: false},
      {text: "Japan", is_correct: false}
    ]},
    {text: "Nagano is located in which country?", choices_attributes: [
      {text: "Norway", is_correct: false},
      {text: "South Korea", is_correct: false},
      {text: "Russia", is_correct: false},
      {text: "Japan", is_correct: true}
    ]}
  ]},
  {subject: "Winter Sports", color: "yellow", questions_attributes: [
    {text: "What are the two sports that make up the Biathlon?", choices_attributes: [
      {text: "horse-backing riding and archery", is_correct: false},
      {text: "speed skating and rifle shooting", is_correct: false},
      {text: "cross-country skiing and rifle shooting", is_correct: true},
      {text: "freestyle skiing and ski jump", is_correct: false}
    ]},
    {text: "How many players are in a curling team?", choices_attributes: [
      {text: "4", is_correct: true},
      {text: "3", is_correct: false},
      {text: "5", is_correct: false},
      {text: "6", is_correct: false}
    ]},
    {text: "Ice Hockey orginated from which country?", choices_attributes: [
      {text: "Russia", is_correct: false},
      {text: "Canada", is_correct: true},
      {text: "USA", is_correct: false},
      {text: "Sweden", is_correct: false}
    ]},
  ]},
  {subject: "Summer Sports", color: "green", questions_attributes: [
    {text: "As of 2016, how many sports are played in the Summer Olympics?", choices_attributes: [
      {text: "26", is_correct: false}, 
      {text: "28", is_correct: true}, 
      {text: "22", is_correct: false}, 
      {text: "32", is_correct: false}
    ]},
    {text: "The modern pentathlon comprises of pistol shooting, fencing, swimming, horse riding and ______?", choices_attributes: [
      {text: "cycling", is_correct: false},
      {text: "sailing", is_correct: false},
      {text: "running", is_correct: true},
      {text: "golf", is_correct: false}
    ]},
    {text: "Including the goalkeeper, how many football players from one team play at any given time?", choices_attributes: [
      {text: "9", is_correct: false},
      {text: "10", is_correct: false},
      {text: "8", is_correct: false},
      {text: "11", is_correct: true}
    ]}
  ]}
]
  
quiz = Quiz.create!(name: 'Olympics', categories_attributes: categories_attributes)
