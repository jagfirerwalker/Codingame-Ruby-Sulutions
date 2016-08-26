STDOUT.sync = true # DO NOT REMOVE
# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.
# ---
# Hint: You can use the debug stream to print initialTX and initialTY, if Thor seems not follow your orders.

# light_x: the X position of the light of power
# light_y: the Y position of the light of power
# initial_tx: Thor's starting X position
# initial_ty: Thor's starting Y position
@light_x, @light_y, @initial_tx, @initial_ty = gets.split(" ").collect {|x| x.to_i}

lx = @light_x
ly = @light_y
ty = @initial_ty
tx = @initial_tx

# game loop
loop do
    remaining_turns = gets.to_i # The remaining amount of turns Thor can move. Do not remove this line.
    
    # Write an action using puts
    # To debug: STDERR.puts "Debug messages..."

    if (ly == ty)
        if (tx < lx)
            puts ("E")
            tx += 1
        else 
            puts ("W")
            tx -= 1
        end
    elsif (ty > ly)
        if (tx == lx)
            puts ("N")
            ty -= 1
        elsif (tx < lx)
            puts ("NE")
            ty -= 1
            tx += 1
        else 
            puts ("NW")
            ty -= 1
            tx -= 1
        end
    elsif (ty < ly)
        if (tx == lx)
            puts ("S")
            ty += 1
        elsif (tx < lx)
            puts ("SE")
            ty += 1
            tx += 1
        else 
            puts ("SW")
            ty += 1
            tx -= 1
        end
    end
end