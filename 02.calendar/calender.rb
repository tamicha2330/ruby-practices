require "optparse"
require "date"
#現在時刻のデータ
today = Date.today
#引数が与えられた時のデータ
input_time =  OptionParser.new.getopts("y:","m:")
input_year = input_time["y"].to_i
input_month = input_time["m"].to_i

#表示する年のデータ
year = input_year.zero? ? today.year : input_year
#表示する月のデータ
month = input_month.zero? ? today.month : input_month
#年月を表示する
print "#{month}月 #{year}\n".rjust(15)

#週のデータ
week_days = ["日","月","火","水","木","金","土"]
#週を表示する
week_days.each {|day| print day.rjust(2)}
puts

#初日の曜日に合わせて、空白を表示する
print " ".rjust(3) * Date.new(year,month,1).wday
#日付を表示する
(Date.new(year,month,1)..Date.new(year,month,-1)).each do |day|
  print day.day.to_s.rjust(3)
  if day.saturday? == true
    puts
  end
end
puts

