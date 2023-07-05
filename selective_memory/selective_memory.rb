class SelectiveMemory
  def initialize
  end

#   def select(memory)
#     good_mems = []
#     bad_mems = []
#     counter = 0

#     memory.split(", ").each do |name|
#       if name.include?("!") == true
#         counter += 1
#         name.slice!("!")
#         bad_mems << name
#       elsif good_mems.include?(name)
#         good_mems << name
#       elsif bad_mems.include?(name) == true || counter > 0
#         bad_mems << name
#         counter -= 1
#       else
#         good_mems << name
#       end
#     end
#     good_mems.join(", ")
#   end
# end

  def select(memory)
    good_mems = []
    bad_mems = []
    toggle = "off"

    memory.split(", ").each do |name|
      if name.include?("!") == true
        toggle = "on"
        bad_mems << name.delete("!")
      elsif toggle == "on"
        bad_mems << name.delete("!")
        toggle = "off"
      elsif bad_mems.include?(name.delete("!")) == true
        bad_mems << name.delete("!")
        # toggle = "off"
      end
    end
    (memory.split(", ").map { |name| name.delete("!") } - bad_mems).join(", ")
  end
end