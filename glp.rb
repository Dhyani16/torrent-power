module GLP
    $energyCharge=0
    $fixedCharge=0
    $finalCharge=0
    def energy_charges
        puts("GLP")
        puts("Please enter your energy usage")
        energy_used=gets.chomp().to_f
        if(energy_used<200)
            $energyCharge=((energy_used*410) / 100)
            #puts $energyCharge
        else
            remaining_energy=energy_used-200
            amountOne=(200*410)
            amountTwo=(remaining_energy*480) 
            totalAmount=amountOne+amountTwo
            $energyCharge=totalAmount / 100 
        end   
    end
    def fixed_charges
        puts("for single phase enter for three phase enter two")
        fixed_choice=gets.chomp().to_f
        if fixed_choice==1
            $fixedCharge=10
        elsif fixed_choice==3
            $fixedCharge=70
        else 
            "Invalid input"
        end
    end

    def final_charge
        energy_charges()
        fixed_charges()
        $finalCharge = $energyCharge.to_f + $fixedCharge.to_f
        return $finalCharge
    end
        
end

#include GLP
#puts(GLP.final_charge())
