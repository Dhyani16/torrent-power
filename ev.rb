module EV
  $energyCharges = 0 
  $demandCharge = 0 
  

   def energy_charges
      puts("EV")
      puts "please enter your energy usage"
      slab = gets.chomp().to_f
      $energyCharge = (slab * 410) / 100
   end  
   
  def demand_charges
      energy_charges()

      puts ("select for billing demand \n
      
      1: For Billing Demand up to contract demand \n
      2: For Billing Demand in excess of contract demand \n")
      billingdemandoption = gets.chomp
               
      case billingdemandoption
           
      when "1"
         $demandCharge = $energyCharge + 25
      when "2"
         $demandCharge = $energyCharge + 50
      else 
         puts("Invalid input")
         puts("Do you want to enter again? 1:yes 2:no")
         choice=gets.chomp.to_i
         if choice==1
             demand_charges()
         else
             puts("goodbye")
         end      
      end
  end 
end   
# include EV
# puts(EV.demand_charges())  