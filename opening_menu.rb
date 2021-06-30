puts("Hello, Welcome")
puts(" 1 : RGP (RESIDENTIAL PURPOSE UP TO & INCLUDING 15KW)\n
2 : GLP : FOR HOSPITAL,SCHOOL & RELIGIOUS PURPOSE\n
3 : Non-RGP : COMMERCIAL AND INDUSTRIAL PURPOSE(UP TO & INCLUDING 15KW)\n
4 : LTP(AG) : FOR AGRICULTURE PURPOSE\n
5 : LTMD 1   : FOR AGRICULTURE PURPOSE(ABOVE 15KW)\n
6 : LTMD 2   : FOR COMMERCIAL PURPOSE(ABOVE 15KW)\n
7 : sl       :  FOR STREET LIGHT\n
8 : LEV:LT  - ELECTRIC VEHICLE CHARGING STATSIONS\n
9 : TMP\n
10 : HTMD-1\n
11 : HTMD-2\n
12 : HTMD-3\n
13 :EV-HT\n
14 : HTMD")
puts("Please select your choice")
main_choice=gets.chomp().to_s
def get_choice(input)
    case input
    when "1"
        puts("you selected 1")
        puts("Please select the relevant\n
            1:Residential General Purpose (RGP)
            2:Below Poverty Line (BPL)")
        choice=gets.chomp.to_i
        require("./rgp.rb")
        if choice==1
            include RGP
            puts(RGP.fixed_charges())

        else
            include BPL
            puts(BPL.fixed_charges)
        end

    when "2"
        puts("You selected 2")
        require("./glp.rb")
        #choice="2"
        include GLP
        puts(GLP.final_charge())

    when "3"
        puts("You selected 3")
        require("./nonrgp.rb")
        include NonRGP
        puts(NonRGP.fixed_charges())

    when "4"
        puts("You selected 4")
        require("./ltp.rb")
        include LTP
        puts (LTP.minimumcharge())
        
    when "5"
        puts("You selected 5")
        require("./ltmdone.rb")
        include LTMDOne
        puts(LTMDOne.final_charge())

    when "6"
        puts("You selected 6")
        require("./ltmdtwo.rb")
        include LTMDTwo
        puts(LTMDTwo.final_charge())

    when "7"
        puts("You selected 7")
        require("./sl.rb")
        include SL
        puts (SL.energy_charges)

    when "8"
        puts("You selected 8")
        require("./lev.rb")
        include LEV
        puts(LEV.fixed_charges())

    when "9"
        puts("You selected 9")
        require("./tmp.rb")
        include TMP
        puts(TMP.fixed_charges())
        
    when "10"
        puts("You selected 10")
        require("./htmdone.rb")
        include HTMDOne
        puts(HTMDOne.final_charge());

    when "11"
        puts("You selected 11")
        require("./htmdtwo.rb")
        include HTMDTwo
        puts(HTMDTwo.final_charge)

    when "12"
        puts("You selected 12")
        require("./htmdthree.rb")
        include HTMDThree
        puts(HTMDThree.final_charge)

    when "13"
        puts("You selected 13")
        require("./ev.rb")
        include EV
        puts(EV.demand_charges()) 

    when "14"
        puts("You selected 14")
        require("./htmdfour.rb")
        include HTMDFour
        puts(HTMDFour.final_charge)
    else puts"invalid choice select the valid one"
    end 
        
        
end

get_choice(main_choice)
puts ("Do you want to choose any other option? 1:yes 2:no")
option=gets.chomp.to_i
if option==1
    puts("Please select your choice")
    main_choice=gets.chomp().to_s
    get_choice(main_choice)
else
    puts("Have a good day")
end
    
