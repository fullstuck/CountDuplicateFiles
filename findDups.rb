puts = "Input directory : "
dir = gets.chomp()

directories = Dir.glob(dir + "/**/*").reject { |f| File.directory?(f) }

if(directories.length > 0)
    arr = Array.new

    for file in directories
        readFile = File.open(file, "r")
        arr.push(readFile.read())
    end

    hash = Hash.new(0)
    arr.each { | v | hash.store(v, hash[v]+1) }

    result = hash.max_by{|k,v| v}

    puts "#{result[0]} #{result[1]}"
else
    puts "Directory doesn't exist or empty"
end