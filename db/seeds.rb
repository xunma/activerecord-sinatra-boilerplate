require 'faker'

['Marshall', 'Nico', 'Desmond', 'Kevin', 'Xiway'].each do |name|

   student = Student.new(
    name: name,
    quote: Faker::Cannabis.buzzword
    )
   student.save
end
puts "#{Student.count} students created!"
