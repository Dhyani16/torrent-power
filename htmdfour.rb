module HTMDFour
  @energyCharge=0
  @fixedCharge=0
  @powerFactorCharge=0
  
  def energy_charges
    puts("HTMD metro traction")
      puts("Note: The Billing Demand will be taken as under:

         1: The Maximum Demand recorded during the month OR
         2:85% of the Contract Demand OR
         3:100 KW
          Whichever is the highest.
          
           
          
          Contract Demand means the maximum kW  the supply of which TPL has provided facility to the consumer.
          
          Maximum Demand in a month means the highest value of average kW used/consumed by the consumer during any time block of 30 minutes.")

          puts("Enter Energy Charges")
          @energyCharge = gets.chomp.to_i
          @energyCharge=((@energyCharge*355).to_f)/100
          puts @energyCharge
  end

  def fixed_charges
    puts("Please enter your billing demand")
    billing_demand=gets.chomp.to_i
    @fixedCharge=(billing_demand*25)/100
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
          @powerFactorCharge=(powerFactor*0.15)/100
        when "2"
          @powerFactorCharge=(powerFactor*0.27)/100
        when "3"
          @powerFactorCharge=(powerFactor*3)/100
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

def final_charge
  energy_charges()
  fixed_charges()
  power_charges()

  @finalCharge= @energyCharge + @fixedCharge + @powerFactorCharge + 0.6+ 0.3
  return @finalCharge
end

     
  
end
# include Htmd14
# puts(Htmd14.final_charge)