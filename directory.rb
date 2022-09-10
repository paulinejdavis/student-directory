# @students = []

def input_students
    puts "Please enter the names of the students"
    puts "To finish, just hit return twice"
    #create an empty array
    students = []
    #get first name
    name = gets.chomp
    #while the name is not empty, repeat code
    while !name.empty? do
        #add student hash to the array
        students << {name: name, cohort: :november}
        puts "Now we have #{students.count} students"
        #get another name from user
        name = gets. chomp
    end
    #return array of students
    students
end


def print_header
    puts "The students of Villians Academy"
    puts "--------------".center(25)
end

def print(students)
    # students.each do |students|
    students.each_with_index do|students, index|
        puts "#{index + 1}. #{students[:name]} (#{students[:cohort]} cohort)"
    end
end

# def student_questions(student)
#          puts "Enter country of".center(@width)
#         country = STDIN.gets.chomp
#         student[:country] = country
#         puts "Enter hobbies of".center(@width)
#         hobbies = STDIN.gets.chomp
#         student[:hobbies] = hobbies
#         puts "Enter height of".center(@width)
#         height = STDIN.gets.chomp
#         student[:height] = height
# end
    
def printonlyD(students)
    puts "The students whose name begins with D are:"
    students.each do |student|
        if student[:name][0] == "D"
            puts "#{student[:name]} (#{student[:cohort]} cohort)"
        end
    end
end

def long_name(students)
    puts "The students whose name are longer than 12 characters are:"
    students.each do |student|
        if student[:name].length > 12
            puts "#{student[:name]} (#{student[:cohort]} cohort)"
        end
    end
end


def print_footer(names)
    puts "Overall, we have #{names.count} great students"
end


students = input_students
#nothing happens until methods are called
print_header
print(students)
print_footer(students)
printonlyD(students)
long_name(students)
# student_questions(students)