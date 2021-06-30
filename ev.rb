module EV
  $energyCharges = 0 
  $demandCharg = 0 
  

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
         $demandCharg = $energyCharge + 25
      when "2"
         $demandCharg = $energyCharge + 50
      else 
         puts "invalid billing demand option"        
      end
  end 
end   
# include EV
# puts(EV.demand_charges())  