require "optparse"
require "date"
#現在時刻のデータ
today = Date.today
year_today = today.year
month_today = today.month

#引数が与えられた時のデータ
input_time =  OptionParser.new.getopts("y:","m:")
get_year = input_time["y"].to_i
get_month = input_time["m"].to_i


#表示する年のデータ
year = get_year
if year == 0
  year = year_today
end
#表示する月のデータ
month = get_month
if month == 0
  month = month_today
end
#年月を表示する
print "#{month}月 #{year}\n".rjust(15)


#週のデータ
week_days = ["日","月","火","水","木","金","土"]
#週を表示する
week_days.each do |day|
  print day.center(2)
end
puts "\n"


#日付のデータ
first_day = Date.new(year,month,1).day
last_day = Date.new(year,month,-1).day
first_weekday = Date.new(year,month,1).wday
days = []
#daysに初日〜最終日の日付を代入する
(first_day..last_day).each{|day| days.push(day)} #=> days[1,2,3,4..]
#初日の曜日に合わせて、空白を表示する
first_weekday.times do print " ".center(3)
end
#日付を表示する
days.each do |day|
  print day.to_s.center(3)
  if (day + first_weekday) % 7 == 0 
    puts "\n"
  end
end