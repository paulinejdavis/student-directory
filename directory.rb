students = [
    "Dr. Hannibal Lecter", 
    "Darth Vader",
    "Nurse Ratched",
    "Michael Coreleone",
    "Alex DeLarge",
    "The Wicked Witch of the West",
    "Terminator",
    "Freddy Krueger",
    "The Joker",
    "Joffrey Baratheon",
    "Norman Bates"
]
# print array
puts "The students of Villians Academy"
puts "--------------"
students.each do |student|
    puts student
end
#end with printing the total
puts "Overall, we have #{students.count} great students"
