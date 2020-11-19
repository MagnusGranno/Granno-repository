package com.company;

public class Dieselbil extends Bil {
    private boolean harPartikelfilter;
    private double kmPrl;

    public Dieselbil(String regnr, String mærke, String model, int årgang, int antalDøre, boolean harPartikelfilter, double kmPrl) {
        super(regnr, mærke, model, årgang, antalDøre);
        this.harPartikelfilter = harPartikelfilter;
        this.kmPrl = kmPrl;
    }

    public boolean isHarPartikelfilter() {
        return harPartikelfilter;
    }

    public void setHarPartikelfilter(boolean harPartikelfilter) {
        this.harPartikelfilter = harPartikelfilter;
    }

    public double getKmPrl() {
        return kmPrl;
    }

    public void setKmPrl(float kmPrl) {
        this.kmPrl = kmPrl;
    }

    @Override
    double beregnGrønEjerafgift() {
        if(kmPrl <= 50 && kmPrl > 20)
        {
            if(!harPartikelfilter)
            {
                return 330 + 130 + 1000;
            }
            return 330 + 130;
        }
        else if(kmPrl <= 20 && kmPrl > 15)
        {
            if(!harPartikelfilter)
            {
                return 1050 + 1390 + 1000;
            }
            return 1050 + 1390;
        }
        else if (kmPrl <= 15 && kmPrl > 10)
        {
            if(!harPartikelfilter)
            {
                return 2340 + 1850 + 1000;
            }
            return 2340 + 1850;
        }
        else if(kmPrl <= 10 && kmPrl > 5)
        {
            if(!harPartikelfilter)
            {
                return 5500 + 2770 + 1000;
            }
            return 5500 + 2770;
        }
        else if (kmPrl <= 5)
        {
            if(!harPartikelfilter)
            {
                return 10470 + 15260 + 1000;
            }
            return 10470 + 15260;
        }
        return 0;
    }

    @Override
    public String toString() {
        return "[Dieselbil: " +
                "harPartikelfilter=" + harPartikelfilter +
                ", kmPrl=" + kmPrl +
                ", regnr=" + regnr  +
                ", mærke=" + mærke  +
                ", model=" + model  +
                ", årgang=" + årgang +
                ", antalDøre=" + antalDøre;
    }
}
