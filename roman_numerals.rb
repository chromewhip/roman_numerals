require "pry"
@roman_numerals = {
  I: 1,
  V: 5,
  X: 10, 
  L: 50,
  C: 100, 
  D: 500,
  M: 1000
}


def to_roman(number)
  final_str = ''
  remainder = number
  while (remainder > 0 ) 

   if (number >= 1000)
    times_divis = number / 1000
    times_divis.times { final_str << 'M'}
    remainder = remainder % 1000

  elsif (number >= 500)
    d_divis = number / 500
    d_divis.times { final_str << 'D'}
    remainder = remainder % 500

  elsif (number >= 100)
    c_divis = number / 100
    c_divis.times {final_str << 'C'}
    remainder = remainder % 100

  elsif (number >= 50)
    l_divis = number / 50
    l_divis.times {final_str << 'L'}
    remainder = remainder % 50

  elsif (number >= 10)
    x_divis = number / 10
    x_divis.times {final_str << 'X'}
    remainder = remainder % 10
  elsif (number >= 5)
    v_divis = number / 5
    v_divis.times {final_str << 'V'}
    remainder = remainder % 5
  else (number >= 1)
    i_divis = number / 1
    i_divis.times {final_str << 'I'}
    remainder = remainder % 1
  end

end
final_str

end



puts to_roman(200)