class Anagram
  def initialize
  end


  # def difference(w1, w2)
  #   if w1.chars.count > w2.chars.count
  #     (w1.split("") - w2.split("")).count
  #   elsif w2.chars.count > w1.chars.count
  #     (w2.split("") - w1.split("")).count
  #   elsif w1.split("").reverse ==  w2.split("")
  #     w1.split.count("")
  #   elsif (w1.split("") + w2.split("")).count == (w1.split("") + w2.split("")).uniq.count
  #     (w1.split("") + w2.split("")).uniq.count
  #   else
  #     binding.pry
  #     (w1.split("") + w2.split("")).uniq.count
  #   end
  # end

  def difference(w1, w2)
    count = 0
    return 0 if w1 == "" && w2 == ""
    return 1 if w1 == "" || w2 == ""
    count = 0
    w1_hash = w1.split("").tally
    w2_hash= w2.split("").tally
    w1_hash.each do |k,v| 
      if w2_hash.has_key?(k)
        count += (w1_hash[k] - w2_hash[k]).abs
      else 
        count += v
      end
    end
    w2_hash.each do |k,v|
      count += v if w1_hash.has_key?(k) == false
    end
    count
  end
end