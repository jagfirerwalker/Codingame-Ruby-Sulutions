STDOUT.sync = true # DO NOT REMOVE
# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

@road = gets.to_i # the length of the road before the gap.
@gap = gets.to_i # the length of the gap.
@platform = gets.to_i # the length of the landing platform.

# game loop
loop do
    speed = gets.to_i # the motorbike's speed.
    coord_x = gets.to_i # the position on the road of the motorbike.
    
    distance_gap = @gap + 1
    length_before_platform = @road+@gap
    
        if (length_before_platform <= coord_x) || (speed > distance_gap)
            puts "SLOW" 
        elsif speed <= @gap
            puts "SPEED"
        elsif @road <= (coord_x + speed) && (length_before_platform > coord_x)
            puts "JUMP"    
        else
            puts "WAIT"
        end    
end