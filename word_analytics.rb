    file = "test-document.txt"
    puts "Analyzing #{file}"
    word_count = 0
    word_hash = Hash.new(0)
    letter_count = 0
    letter_hash = Hash.new(0)
    symbols = 0
    File.open(file, 'r') do |f|
        while line = f.gets
            symbols += line.gsub(/\w|\s/, '').size
            words = line.downcase.split.map{|x| x.gsub(/\W/,"")}
            word_count += words.size
            words.each {|w| word_hash[w] += 1}
            line.downcase.gsub(/\W|\d/, '').each_char {|l| letter_hash[l] += 1; letter_count += 1}
        end
    end
    word_hash = word_hash.sort_by {|key,val| val}

    puts "Words: #{word_count}\nLetters: #{letter_count}\nSymbols: #{symbols}"
    puts "Most Used Words: #{word_hash.reverse[0..4].join(" ")}"
    puts "Most Used Letters: #{letter_hash.sort_by {|key,val| val}.reverse[0..4].join(" ")}"
    puts "Unused letters: #{([*('a'..'z')] + letter_hash.keys - ([*('a'..'z')] & letter_hash.keys)).join(', ')}"
    puts "Words Used Once: #{word_hash.map {|key,value| key if value == 1}.compact.join(', ')}"


