module LTMDTwo
  $energyCharge=0
  $fixedCharge=0
  $powerFactorCharge=0
  $finalCharge=0
  $billing_demand=0

  def energy_charges
    puts("LTMD 2")
    puts ("
      LTMD-2 : Low Tension Maximum Demand for other than residential purpose
      
      Note: The Billing Demand will be taken as under:\n

      1: The Maximum Demand recorded during the month OR\n
      2: 85% of the Contract Demand OR\n
      3: 6 KW\n
      Whichever is the highest.\n
      
       
      
      Contract Demand means the maximum kW for the supply \n
      of which TPL has provided facility to the consumer.\n
      
      Maximum Demand in a month means the highest value of average kW used/consumed\n
      by the consumer during any time block of 30 minutes.")
    $billing_demand=gets.chomp.to_i
    if $billing_demand<=50
      $energyCharge=(($billing_demand*480).to_f)/100
    else
      $energyCharge= (($billing_demand*500).to_f)/100
    end
  end



    def fixed_charges
      if $billing_demand<=50
        $fixedCharge=$billing_demand*150
      elsif $billing_demand <=80
        partOne=($billing_demand-50)*185
        partTwo=50*150
        $fixedCharge=partOne+partTwo
      else
        partOne=($billing_demand-80)*245
        partTwo=30*185
        partThree= 50*150
        $fixedcharge= partOne+partTwo+partThree
      end
    end

    def power_charges
      puts("Select the relevant \n
        1: For each 1% improvement in \n
           Power Factor from 90% to 95%\n
        2: For  each 1% above 95% Power \n
           Factor
        3: For each 1% decrease in Power\n 
           Factor below 90%")
  
        powerChargesOption=gets.chomp
        puts "Please enter the power factor"
        powerFactor=gets.chomp.to_f
  
        case powerChargesOption
        when "1"
          $powerFactorCharge=(powerFactor*0.15)/100
        when "2"
          $powerFactorCharge=(powerFactor*0.27)/100
        when "3"
          $powerFactorCharge=(powerFactor*3)/100
        end
     end

    

    def final_charge
      energy_charges()
      fixed_charges()
      power_charges()
      $finalCharge=$energyCharge+$fixedCharge+$powerFactorCharge
      return $finalCharge
    end
end

# include LTMDTwo
# puts(LTMDTwo.final_charge())
