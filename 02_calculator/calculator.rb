#write your code here

def add x, y
    x + y
end

def subtract x, y
    x - y
end

def sum array
    sum = 0
    array.each do |i|
        sum += i
    end
    sum
end

def multiply x, y, *args
    product = x * y
    args.each do |i|
        product *= i
    end
    product
end

def power x, y
    result = x
    (y - 1).times {result *= x}
    result
end

def factorial x
    if x == 0
        result = 1
    else
        result = 1
        x.times {|i| result *= i + 1}
        result
    end    
    result
end

puts factorial 10