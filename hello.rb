directories = Dir.glob("DropsuiteTest/**/*").reject { |f| File.directory?(f) }

arr = Array.new

for file in directories
    readFile = File.open(file, "r")
    arr.push(readFile.read())
end