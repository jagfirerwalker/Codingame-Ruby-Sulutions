STDOUT.sync = true # DO NOT REMOVE
# The while loop represents the game.
# Each iteration represents a turn of the game
# where you are given inputs (the heights of the mountains)
# and where you have to print an output (the index of the moutain to fire on)
# The inputs you are given are automatically updated according to your last actions.


# game loop
mountain_h = 0
mountain_array = []
target = 0
loop do

    8.times do
        mountain_h = gets.to_i 
         mountain_array << mountain_h
    end
    
    target = mountain_array.max 
    puts ("#{mountain_array.index(target)}")
    mountain_array.clear
end