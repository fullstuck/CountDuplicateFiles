puts = "Input directory : "
dir = gets.chomp()

directories = Dir.glob(dir + "/**/*").reject { |f| File.directory?(f) }

arr = Array.new

for file in directories
    readFile = File.open(file, "r")
    arr.push(readFile.read())
end