(1..20).each do |x|
    case
    when x % 3 == 0 && x % 5 == 0
        puts "fizzbuzz"
    when x % 3 == 0
        puts "fizz"
    when x % 5 == 0
        puts "buzz"
    else
        puts x
    end
end    
