@students = []

def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end
    
def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "4. Load the list from file"
  puts "5. Exit"
end

def process(selection)
  case selection
    when "1"
      input_students
    when "2"
      show_students
    when "3"
        save_students
    when "9"
      exit
    else
      puts "I don't know what you mean, try again"
  end
end


def show_students
  print_header
  print_students_list
  print_footer
end

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

def save_students
  # open the file for writing
  file = File.open("students.csv", "w")
  # iterate over the array of students
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
end

def print_footer(names)
    if names.count == 1
     puts "Overall, we have 1 great student"
    else
   puts "Overall, we have #{names.count} great students"
    end
end
students = input_students
#nothing happens until methods are called
print_header
print(students)
print_footer(students)
printonlyD(students)
long_name(students)
file.puts "This is written to a file"
# student_questions(students)