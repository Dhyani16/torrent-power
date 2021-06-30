module LEV
  @energyCharge=0
  @fixedCharge=0
  def energy_charges
    puts('LEV')
      puts("Please enter your energy usage")
      energy_used=gets.chomp().to_f
      @energyCharge=(energy_used*420)/100
  end

  def fixed_charges
      energy_charges()
      @finalCharge = @energyCharge.to_f + 25
      return @finalCharge

  end

  
      
end

# include LEV
# puts(LEV.fixed_charges())