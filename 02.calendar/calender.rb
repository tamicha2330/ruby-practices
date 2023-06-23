require "optparse"
require "date"
#現在時刻のデータを設定
today = Date.today

input_time =  OptionParser.new.getopts("y:","m:")
input_year = input_time["y"].to_i
input_month = input_time["m"].to_i

year = input_year.zero? ? today.year : input_year
month = input_month.zero? ? today.month : input_month
print "#{month}月 #{year}\n".rjust(15)

["日","月","火","水","木","金","土"].each {|day| print day.rjust(2)}
puts

#空白を作るための定数を設定
BLANK = " " * 3 

print BLANK * Date.new(year,month,1).wday
(Date.new(year,month,1)..Date.new(year,month,-1)).each do |day|
  print day.day.to_s.rjust(3)
  puts if day.saturday?
end
puts

