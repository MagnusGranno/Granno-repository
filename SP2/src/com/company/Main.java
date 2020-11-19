package com.company;

public class Main {

    public static void main(String[] args) {
        Bil fiat = new Benzinbil("AU19560","Fiat","Punto S",1995, 5, 100, 15);
        Bil tesla = new Elbil("OP19631","Tesla", "Model S", 2020,5,85, 250, 200);
        Bil audi = new Dieselbil("KM15430", "Audi", "A3", 2016, 3, true, 15.9);


    Garage BilParken = new Garage();

    BilParken.tilføjBil(fiat);
    BilParken.tilføjBil(tesla);
    BilParken.tilføjBil(audi);

        System.out.println(BilParken.toString());
        System.out.println("Total grønafgift: " + BilParken.beregnGrønAfgiftForBilpark() +" kr.");



    }
}
