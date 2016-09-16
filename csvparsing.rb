def to_number(num)
  new_num = num.to_i
  return new_num if new_num.to_s == num
  return num
end
def csv_parsing(csv)
  count = 0
  values = []
  pos = 0
  while pos < csv.length
    if csv[pos] == ','
      pos += 1
    end
    values.insert(count,'')
    while pos < csv.length && csv[pos] != ','
      if csv[pos] == '"' || csv[pos] == "'"
        first_quotes = pos
        pos += 1
        while pos < csv.length && csv[pos] != csv[first_quotes]
          values[count] += csv[pos]
          pos += 1
        end
      else
        values[count] += csv[pos]
      end
      pos += 1
    end
    values[count] = to_number(values[count])
    count += 1
    pos += 1
  end
  values
end

p csv_parsing('2,6,3,2,5')
p csv_parsing('"pears","apples","walnuts","grapes","cheese,cake"')
p csv_parsing('1,"Que?","Kay?",2,"Si.","Sea? Kay, sea?","No, no, no. Que... ‘what’.",234,"Kay Watt?","Si, que ‘what’.","C.K. Watt?",3,"Yes!","comma,comma, comma , :)"')

