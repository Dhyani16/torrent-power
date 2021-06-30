module SL
  $energyCharge=0

  def energy_charges
    puts("SL")
      puts("Please enter your energy usage")
      energy_used=gets.chomp().to_f
      $energyCharge=(energy_used*430)/100
      return ($energyCharge)
 
  end      
end
# include SL
# puts (SL.energy_charges)