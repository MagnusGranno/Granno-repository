package com.company;

import java.util.ArrayList;

public class City
{
    int ID;
    String Name;
    String CountryCode;
    String District;
    int Population;

    public City(int ID, String name, String countryCode, String district, int population)
    {
        this.ID = ID;
        this.Name = name;
        this.CountryCode = countryCode;
        this.District = district;
        this.Population = population;
    }



    ArrayList<City> cities = new ArrayList<>();


    @Override
    public String toString()
    {
        return "City{" +
                "cities=" + cities +
                '}';
    }

    void addCity(City c){
        cities.add(c);
    }
}
