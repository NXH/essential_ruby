# Strings, integers, variables
# Simple methods, string interpolation

first = "bruce".capitalize
last = "klink".capitalize

full = first + " " + last
lucky_number = rand(1..100) + 7

message = "Hello, #{full}. Your lucky number today is #{lucky_number}."

puts message
