     module RGP      
      $energyCharge=0
      $fixedCharge=0
      $finalCharge=0

      def energy_charges
        puts("RGP and BPL")
        puts("Please enter your energy usage")
        energyUsage=gets.chomp.to_i
        if energyUsage<=50
          $energyCharge=(energyUsage*320)/100
        elsif energyUsage<=200
          partOne=((energyUsage-50)*395)/100
          partTwo=(50*320)/100
          $energyCharge=partOne+partTwo
        else
          partOne=((energyUsage-200)*500)/100
          partTwo=(150*395)/100
          partThree=(50*320)/100
          $energyCharge=partOne+partTwo+partThree
        end
      end
      
      def fixed_charges
        energy_charges()
        puts "Enter phases:\n
        1:Single phase
        2:Three phase"
        phase = gets.chomp.to_i
        if phase == 1
            $finalCharge=25+$energyCharge
            return $finalCharge
            
          elsif phase == 3
            $finalCharge=65+$energyCharge
            return $finalCharge
          else
            puts("Invalid input")
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
    # include RGP
    # puts(RGP.fixed_charges())








module BPL

  $energyCharge=0
  $fixedCharge=0
  $finalCharge=0

  def energy_charges
    puts("Please enter your energy usage")
    energyUsage=gets.chomp.to_i
    if energyUsage<=50
      $energyCharge=(energyUsage*150)/100
    elsif energyUsage<=200
      partOne=((energyUsage-50)*395)/100
      partTwo=(50*320)/100
      $energyCharge=partOne+partTwo
    else
      partOne=((energyUsage-200)*500)/100
      partTwo=(150*395)/100
      partThree=(50*320)/100
      $energyCharge=partOne+partTwo+partThree
    end
  end

  def fixed_charges
    energy_charges()
    $fixedCharge=5
    $finalCharge=$fixedCharge+$energyCharge
  end

      

end
    
    # include BPL
    # puts(BPL.fixed_charges)






