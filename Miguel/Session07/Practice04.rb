


def getRandom random
  r = Random.new
  index = r.rand(0...random.length)
  return random[index]
end
def getRandomDate
  date = Time.at(rand * Time.now.to_i)
  date.strftime("%m/%d/%Y")
end

cities = ["CBBA","LP","OR","PT","SC"]

file = File.open('data.txt', 'w+')
file.truncate(0)

(1..100).each do |i|
  content = "USER_#{i}|PASS_#{i}|#{getRandomDate}|#{getRandom cities}\n"
  puts content
  file.write(content)
end

file.close
