package com.company;

import java.util.ArrayList;

public class Garage {



    public ArrayList<Bil> bilPark = new ArrayList<Bil>();


    void tilføjBil(Bil b) {
        bilPark.add(b);
    }

    double beregnGrønAfgiftForBilpark(){
        double afgiftSum = 0;
        for(Bil i: bilPark)
        {
            afgiftSum += i.beregnGrønEjerafgift();
        }
    return afgiftSum;
    }

    @Override
    public String toString() {
        return "Biler i BilParken: \n" + bilPark + " \n";
    }

}
