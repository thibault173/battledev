# code en ligne
# input = Array.new
# while i = $stdin.gets
#   input << i.strip
# end

# code local
input = File.open('samples/input1.txt').readlines.map(&:chomp)
# puts "=== INPUT ==="
# puts input
# puts "============="
# puts ''

#########################################################

def method_exercise(input)
  ### input is an array
  input
end

output = method_exercise(input)
puts output
