# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

@n = gets.to_i # the number of temperatures to analyse
@temps = gets.chomp # the n temperatures expressed as integers ranging from -273 to 5526
arr = []


if @n == 0
    puts "0"
else
    temps_array = []
    temps_vs_diff = {}
    temps_array = @temps.split(" ").collect {|x| x.to_i} #turns number field into individual integer numbers
    
    temps_array.each do |temp| #turn all numbers positive
        if temp < 0
            temps_vs_diff[temp] = (0 - temp)
            
        elsif temp > 0
            temps_vs_diff[temp] = 0 - temp * -1
        else
            temps_vs_diff[temp] = 0
        end
    end
    
    tvd_min = temps_vs_diff.select{|k,v| v == temps_vs_diff.values.min}.max #select the lowest and highest number if similar
    
       puts tvd_min[0] #chooses 1 of multiple if multiple same humbers exist
       
    
end