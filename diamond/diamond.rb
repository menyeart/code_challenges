class Diamond
  def initialize
  end


  def create_diamond(size)

    return nil if size.even? == true  || size < 1
    return "*\n" if size == 1

    row = ""
    diamond = ""

    half_steps = ((size - 1) / 2) + 1
    shards = 1
    spaces = (size - shards) / 2
    counter = 1

    half_steps.times do 
      counter.times do
        row.prepend("*")
      end
      spaces.times do 
        row.insert(0, " ")
      end
      row.concat("\n")
      diamond.concat(row)
      row = ""
      shards += 2
      spaces -= 1
      counter += 2
    end

    down_shards = size - 2

    (half_steps - 1).times do 
      (down_shards).times do 
        row.insert(0, "*")
      end
      ((size - down_shards) / 2).times do 
        row.insert(0, " ")
      end
      row.concat("\n")
      diamond.concat(row)
      down_shards -= 2
      row = ""
    end
    diamond
  end 
end

