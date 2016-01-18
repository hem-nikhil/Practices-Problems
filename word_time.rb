
def get_word(int)
	numbers_to_name = {
      50 => "fifty",
      40 => "forty",
      30 => "thirty",
      20 => "twenty",
      19=>"nineteen",
      18=>"eighteen",
      17=>"seventeen", 
      16=>"sixteen",
      15=>"fifteen",
      14=>"fourteen",
      13=>"thirteen",              
      12=>"twelve",
      11 => "eleven",
      10 => "ten",
      9 => "nine",
      8 => "eight",
      7 => "seven",
      6 => "six",
      5 => "five",
      4 => "four",
      3 => "three",
      2 => "two",
      1 => "one"
    }
	str = ""
	return str if int == 0
	return numbers_to_name[int] if (int >= 1 && int <=20) || ([30,40,50].include?int)
	numbers = int.to_s.split('')
	factor = 10
	numbers.each do |num|
		num = num .to_i * factor
		factor = factor / 10
		str << "#{numbers_to_name[num.to_i]} "
	end
	return str.strip
end



hour = 5
minute = 47
time = ""
min_str =  minutes == 1 ? "minute" : "minutes"
h_word = get_word(hour)
m_word = get_word(minute)
if minute == 0
	puts "#{h_word} o\' clock"
elsif minute ==15
	puts "quarter past #{h_word}"
elsif minute == 30
	puts "half past #{h_word}"
elsif minute == 45
	h_word = get_word((hour%12)+1)
	puts "quarter to #{h_word}"
elsif minute<30
	puts "#{m_word} #{min_str} past #{h_word}"
else
	h_word = get_word((hour%12)+1)
	m_word = get_word(60-minute)
	puts "#{m_word} #{min_str} to #{h_word}"
end

