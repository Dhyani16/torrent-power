module NonRGP
  @energyCharge=0
  @fixedCharge=0
   
  def energy_charges
    puts("Non RGP")
      puts("Please enter your energy usage")
      slab=gets.chomp().to_f
      @energyCharge=(slab*460)/100
  end 

  def fixed_charges
    energy_charges()
     puts "enter your fix charges"
     
      fixed_choice=gets.chomp().to_f
      if fixed_choice <=5
          @fixedCharge =  @energyCharge + 70
          return @fixedCharge
  
  elsif
       fixed_choice >5 && fixed_choice <=15
       @fixedCharge = @energyCharge + 90
       return @fixedCharge
  
  else
    puts("Invalid input!")
    puts("Do you want to enter again? 1:yes 2:no")
    choice=gets.chomp.to_i
    if choice==1
        fixed_charges()
    else
        puts("goodbye")
    end
 end
end

end 

# include Non_RGP
# puts(Non_RGP.fixed_charges())
