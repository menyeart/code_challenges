class RoadKill
  def initialize
    @animals = ["penguin", "hyena", "bear", "baboon", "rabbit", "aardvark", "alligator"]
  end

    # def find_animal(body)
    #   animal = body.gsub("=", "").chars.uniq.join
    #   guess = @animals.select do |anim| 
    #             binding.pry
    #             anim.include?(animal[1..3]) == true || anim.include?(animal[1..3].reverse) == true
    #           end.first
    #   guess == nil ? "??" : guess        
    # end

    # def find_animal(body)
    #   animal = body.gsub("=", "").chars.uniq
    #   guess = @animals.select do |anim| irb
    #             (animal - anim.chars).count <= 3 ? nil : anim
    #           end.first
    #   guess == nil ? "??" : guess        
    # end

    def find_animal(photo)
      kill = photo.gsub("=", "").chars.uniq
      kill2 = photo.reverse.gsub("=", "").chars.uniq
      guess = @animals.select do |anim| 
                anim if anim.chars.uniq == kill || anim.chars.uniq == kill2
              end.first
  
      return "??" if guess == nil
      
      tallied_guess = Hash.new(0)
      guess.chars.each { |char| tallied_guess[char] += 1}

      tallied_body = Hash.new(0)
      photo.gsub("=", "").chars.each { |char| tallied_body[char] += 1}

      tallied_body.each do |k, v|
        return "??" if tallied_guess[k] > v  
      end

      guess
    end

    # def find_animal(body)
    #   kill = body.gsub("=", "").chars
    #   kill2 = body.reverse.gsub("=", "").chars
    #   guess = @animals.select do |anim| 
    #     tallied = anim.chars.tally
    #     if kill.tally.each do |k, v|
    #        return "??" if tallied[k] > v
    #     end
    #   end
   
    #           end.first
    #   guess == nil ? "??" : guess
    # end
end