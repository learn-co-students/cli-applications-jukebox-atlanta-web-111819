def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.strip

  if songs.include?(user_input)
    puts "Playing #{user_input}"
    return

  else
    song_number = user_input.to_i

    if song_number-1 == -1
      puts "Invalid input, please try again"
      return
    end

    song = songs[song_number-1]


    if song
      puts "Playing #{song}"
      return
    else
      puts "Invalid input, please try again"
      return
    end

    play(songs)
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  while true
    input = gets.strip

    case input
    when "exit"
      exit_jukebox
      break
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    else
      puts "That is not a valid command."
      help
    end
    puts "Please enter another command:"
  end

end
