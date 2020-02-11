def input_students
  puts "Plese enter the names of the students"
  puts "To finish, just hit return twice"
  #create an empty array
  students = []
  #now get the first name
  name = gets.chomp
  #now repeat the code while the name is not empty
  while !name.empty? do
    #add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    #get another name from the user
    name = gets.chomp
  end
  students
end
def print_header
  puts "The students of Villains Academy"
  puts "--------------"
end
def print(students)
  students.each.with_index(1) do |student, index|
    puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end
def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end
  #Nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)