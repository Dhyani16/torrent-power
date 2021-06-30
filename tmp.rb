module TMP
  @energyCharge=0
  @fixedCharge=0
  def energy_charges
    puts("TMP")
      puts("Please enter your energy usage")
      energy_used=gets.chomp().to_f
      @energyCharge=(energy_used*510)/100
  end
  def fixed_charges
      energy_charges()
      @finalCharge = @energyCharge.to_f + 25
      return @finalCharge

  end

  
      
end

# include TMP
# puts(TMP.fixed_charges())