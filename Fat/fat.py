BMI = $weight/(($height)*($height))
print($name, ": Your BMI value is", BMI)
SW = 25*$height*$height
print("A suggested upper limit of your weight is", SW, "kg")
if BMI < 25:
  print("You are in the safe side")
else:
  msg = $name + " is DEBUT"
  print(msg)
if BMI > 27:
  print("You could be Tou-Nyou-Byou")
