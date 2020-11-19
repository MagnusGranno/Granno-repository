package com.company;

public class Benzinbil extends Bil {
    private int oktantal;
    private float kmPrl;

    public Benzinbil(String regnr, String mærke, String model, int årgang, int antalDøre, int oktantal, float kmPrl) {
        super(regnr, mærke, model, årgang, antalDøre);
        this.oktantal = oktantal;
        this.kmPrl = kmPrl;
    }

    public int getOktantal() {
        return oktantal;
    }

    public void setOktantal(int oktantal) {
        this.oktantal = oktantal;
    }

    public float getKmPrl() {
        return kmPrl;
    }

    public void setKmPrl(float kmPrl) {
        this.kmPrl = kmPrl;
    }

    @Override
    double beregnGrønEjerafgift() {
        if(kmPrl <= 50 && kmPrl > 20)
        {
            return 330;
        }
        else if(kmPrl <= 20 && kmPrl > 15)
        {
            return 1050;
        }
        else if (kmPrl <= 15 && kmPrl > 10)
        {
            return 2340;
        }
        else if(kmPrl <= 10 && kmPrl > 5)
        {
            return 5500;
        }
        else if (kmPrl <= 5)
        {
            return 10470;
        }
        return 0;
    }

    @Override
    public String toString() {
        return "Benzinbil: " +
                "oktantal=" + oktantal +
                ", kmPrl=" + kmPrl +
                ", regnr=" + regnr +
                ", mærke=" + mærke +
                ", model=" + model  +
                ", årgang=" + årgang +
                ", antalDøre=" + antalDøre + "]" + "\n";
    }
}
