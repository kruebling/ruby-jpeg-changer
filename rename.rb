Dir.chdir  "/Users/Guest/Desktop/Images"
pictures = Dir['*.{jpg,jpeg}']

pictures.each do |picture|
  puts "The #{picture} is inside the folder what do you want to do: 1) rename, 2) delete, 3) nothing"
  answer = gets.chomp.to_i
  if answer == 1
    puts "So you want to rename it. Good what you want to rename it"
    answer = gets.chomp
    File.rename(picture, File.join(Dir.pwd, answer))
    puts "The picture now it is #{answer}"
  elsif answer == 2
    puts "You want to delete it"
    File.delete(picture)
    unless File.exists?(picture)
      puts "The file has been delete it"
    end
  else
    puts "so you want to do nothing to the file"
    puts "Done !!!!"
  end
end

puts "Thanks for handeling our images"
