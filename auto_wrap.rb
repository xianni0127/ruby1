class AutoWrap
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
return result
end
end
