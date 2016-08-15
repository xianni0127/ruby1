
def getword(str, c)
  i=0
  leng=c
  strlength=str.split.length

  result = ""
  until str.split[i].nil? do
    if (leng-str.split[i].length-1) >= 0
      result += str.split[i]
      result += " "
      leng=leng-str.split[i].length-1
      i=i+1
    else
      result += "\n"
      leng=c
    end
  end
  result
end
<<<<<<< cdfd12e044b8ddb133b12d731c6a5065b6cc0016
=======

print getword("qewe rweg we aef akvw erge rg", 15)
>>>>>>> add the second third and forth homework
