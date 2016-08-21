
  NUM_MAP = {
      0 => 'zero',
      1 => 'one',
      2 => 'two',
      3 => 'three',
      4 => 'four',
      5 => 'five',
      6 => 'six',
      7 => 'seven',
      8 => 'eight',
      9 => 'nine',
      10 => 'ten',
      11 => 'eleven',
      12 => 'twelve',
      13 => 'thirteen',
      14 => 'fourteen',
      15 => 'fifteen',
      16 => 'sixteen',
      17 => 'seventeen',
      18 => 'eighteen',
      19 => 'nineteen',
      20 => 'twenty',
      30 => 'thirty',
      40 => 'forty',
      50 => 'fifty',
      60 => 'sixty',
      70 => 'seventy',
      80 => 'eighty',
      90 => 'ninety',
      100 => 'hundred',
  }

  SEG_MAP ={
    0 => '',
    1 => 'thousand',
    2 => 'million',
    3 => 'billion',
    4 => 'trillion',
    5 => 'quadrillion',
    6 => 'quintillion'
  }

### get the bit num, the input num must be less than 9 (0-9)
def handle_bit (num)
  num2str=''
  num2str+=NUM_MAP[num]
  return num2str
end

### get ten num, the inout must be 10-99
def handle_ten (num)
  num2str=''
  if (num%10==0)
    num2str+=NUM_MAP[num]
  elsif (num>10 && num<20)
    num2str+=NUM_MAP[num]
  else
    num2str+=NUM_MAP[num/10*10]+'-'+NUM_MAP[num%10]
  end
  return num2str
end

### get hundred num, the input must be 100-999
def handle_hundred (num)
  num2str=''
  if (num%100==0)
    num2str+=NUM_MAP[num/100]+ ' '+ NUM_MAP[100]
  elsif (num%100>=10 && num%100 <= 99)
    num2str+=NUM_MAP[num/100]+ ' '+ NUM_MAP[100]+ ' ' +handle_ten(num%100)
  elsif (num%100>=1 && num%100 <= 9)
    num2str+=NUM_MAP[num/100]+ ' '+ NUM_MAP[100]+ ' ' +handle_bit(num%100)
  end
  return num2str
end

def handle_basic_num (num)
  if(num<=9 && num>=0)
    handle_bit(num)
  elsif(num<=99 && num>=10)
    handle_ten(num)
  else(num<=999 && num>=100)
    handle_hundred(num)
  end
end

def split_num(num)
    arr = []

    while num > 999
      segment = num % 1000
      num = num / 1000
      arr.push(segment)
    end
    arr.push(num)
  end

def num_str (num)
  seg_map=0
  num2str=''
  if (num==0)
    num2str+=NUM_MAP[0]
  else

    tmp_arr=split_num(num)
    tmp_arr_i=tmp_arr.length-1

    while (tmp_arr_i >= 0) do
      if (tmp_arr[tmp_arr_i].to_i==0)
        num2str +=''
      else
        num2str +=' '+handle_basic_num(tmp_arr[tmp_arr_i].to_i)+' '+SEG_MAP[tmp_arr_i]
      end
      tmp_arr_i=tmp_arr_i-1
    end
  end

 return num2str
end
