package Task3;

import java.util.ArrayList;

public class Zoo {
     ArrayList<Animal> animals = new ArrayList<Animal>();

     void makeAllSounds()
     {
         for(Animal i : animals)
         {
             i.makeSound();
         }
     }
     void addAnimal(Animal animal)
     {
         animals.add(animal);
     }
     void printNumberOfLegs()
     {
         int Legs = 0;
         for(Animal i : animals)
         {
             Legs += i.getNumberOfLegs();
         }
         System.out.println("Total number of legs in my zoo: " + Legs);
     }

}
