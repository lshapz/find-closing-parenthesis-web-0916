def find_closing_parenthesis(sentence, open_position)

  split = sentence.split('') #.slice(open_position, sentence.length)

  search_string = split[open_position, sentence.length]
  openers = 0
  starter = open_position

  search_string.each_with_index do |x, ind| 
    if x == "(" 
      openers += 1
    elsif x == ")"
      openers -= 1
      if openers == 0 
        return ind + starter
      end
    end
  end


end
