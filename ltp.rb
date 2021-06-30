module LTP
  @Energycharges=0
  @finalammount=0
  def Energyfun
  
    puts "LTP (AG) : AGRICULTURE SERVICE"
    puts "enter Energy charges"
    @Energycharges = gets.chomp.to_f
    (@Energycharges= (@Energycharges * 340) /100)
  end

   def minimumcharge
    Energyfun()
    @finalammount = @Energycharges+ 10
    return @finalammount
    end

end
  

# include LTP
# puts (LTP.minimumcharge())