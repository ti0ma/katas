(1..100).each { |x|
  puts "FizzBuzz#{x}"[x.gcd(3)==3?0:x.gcd(5)==5?4:8,x.gcd(15)==15?8:4] 
}
