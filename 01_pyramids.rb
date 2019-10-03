def ask_num
puts"choisi un num:" 
num = gets.chomp.to_i
return num
end

def py1(num) 
tab =[]
x = "#"
 while num > 1 do
 	esp =" "*(num-1)
 	étage = esp + x 
 	tab << étage
 	num -=1
 	x += "##"
 end
 puts tab
end

def py2(num) 
	tab =[]
x = "#"
 while num > 1 do
 	éspace =" "*(num-1)
 	étage = éspace + x 
 	tab << étage
 	num -=1
 	x += "##"
 end
 puts tab.reverse
end

def perf 
num = ask_num	
py1(num)
py2(num)
end


perf


