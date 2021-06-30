module HTMDOne
  $energyCharge=0
  $fixedCharge=0
  $powerFactorCharge=0
  $touCharge=0
  $finalCharge=0
  $billing_demand=0

  def energy_charges
    puts("HTMD 1")
    puts("
      HTMD-1 : High Tension Maximum Demand

      Note: The Billing Demand will be taken as under:\n

      The Maximum Demand recorded during the month OR\n
      1:85% of the Contract Demand OR\n
      2:100 KW\n
      3:Whichever is the highest.\n

 

      Contract Demand means the maximum kW for the supply of \n
      which TPL has provided facility to the consumer.\n

      Maximum Demand in a month means the highest value of \n
      average kW used/consumed by the consumer during any time block of 30 minutes.")

      puts("please enter the billing demand")
      $billing_demand=gets.chomp().to_i

      if $billing_demand<=400
        $energyCharge=($billing_demand*455)/100
      else
        $energyCharge=(($billing_demand-400)*445 + (400)*455)/100
      end
  end

  def fixed_charges
    if $billing_demand<=1000
      $fixedCharge = $billing_demand*260
    elsif $billing_demand>1000
      $fixedCharge=$billing_demand*335
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
      else
        puts("Invalid input")
        puts("Do you want to enter again? 1:yes 2:no")
        choice=gets.chomp.to_i
        if choice==1
            power_charges()
        else
            puts("goodbye")
        end
      end
   end
  
  def tou_charges
    if $billing_demand<=300
      $touCharge=(80*$billing_demand)/100
    else
      $touCharge=$billing_demand
    end
  end

  def final_charge
    energy_charges()
    fixed_charges()
    power_charges()
    tou_charges()

    $finalCharge= $energyCharge + $fixedCharge + $powerFactorCharge + $touCharge + 0.3
    return $finalCharge
  end

end

# include HTMDOne
# puts(HTMDOne.final_charge());