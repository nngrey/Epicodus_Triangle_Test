require './lib/triangle'

def main_menu
  puts "To test a new triangle, press 't'"
  puts "To exit press 'x'"
  choice = gets.chomp
  if choice == "t"
    triangle_tester
  elsif choice == "x"
    puts "Goodbye"
  else
    puts "Please read the instructions!\n\n"
    main_menu
  end
end

def triangle_tester
  puts "To test a triangle, please enter the length of each side."
  puts "Enter side one:"
  side1 = gets.chomp.to_i
  puts "Enter side two:"
  side2 = gets.chomp.to_i
  puts "Enter side three:"
  side3 = gets.chomp.to_i
  new_triangle = Triangle.new(side1, side2, side3)
  if (new_triangle.is_triangle)
    puts "You have created a #{new_triangle.type} triangle.\n\n"
    main_menu
  else
    puts "Go back to geometry, this is not a triangle.\n\n"
    main_menu
  end
end
main_menu
