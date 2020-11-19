package com.company;

public class Elbil extends Bil {
    private float batterikapacitetKWh;
    private float maxKm;
    private double whPrKm;


    public Elbil(String regnr, String mærke, String model, int årgang, int antalDøre, float batterikapacitetKWh, float maxKm, double whPrKm) {
        super(regnr, mærke, model, årgang, antalDøre);
        this.batterikapacitetKWh = batterikapacitetKWh;
        this.maxKm = maxKm;
        this.whPrKm = whPrKm;
    }

    public float getBatterikapacitetKWh() {
        return batterikapacitetKWh;
    }

    public void setBatterikapacitetKWh(float batterikapacitetKWh) {
        this.batterikapacitetKWh = batterikapacitetKWh;
    }

    public float getMaxKm() {
        return maxKm;
    }

    public void setMaxKm(float maxKm) {
        this.maxKm = maxKm;
    }

    public double getWhPrKm() {
        return whPrKm;
    }

    public void setWhPrKm(double whPrKm) {
        this.whPrKm = whPrKm;
    }


    @Override
    double beregnGrønEjerafgift() {
        double ekmprl = (100/(whPrKm/91.25));
        if(ekmprl <= 50 && ekmprl > 20)
        {
            return 330;
        }
        else if(ekmprl <= 20 && ekmprl > 15)
        {
            return 1050;
        }
        else if (ekmprl <= 15 && ekmprl > 10)
        {
            return 2340;
        }
        else if(ekmprl <= 10 && ekmprl > 5)
        {
            return 5500;
        }
        else if (ekmprl <= 5)
        {
            return 10470;
        }
        return 0;
    }

    @Override
    public String toString() {
        return "[Elbil: " +
                "batterikapacitetKWh=" + batterikapacitetKWh +
                ", maxKm=" + maxKm +
                ", whPrKm=" + whPrKm +
                ", regnr=" + regnr +
                ", mærke=" + mærke +
                ", model=" + model +
                ", årgang=" + årgang +
                ", antalDøre=" + antalDøre + "]" + "\n";
    }
}
