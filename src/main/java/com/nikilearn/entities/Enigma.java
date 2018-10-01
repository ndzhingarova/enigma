/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nikilearn.entities;

import java.math.BigDecimal;
import java.math.RoundingMode;

/**
 *
 * @author nikoletad
 */
public class Enigma {
    private int numberOfBoxes;
    private double scaleWeight;
    private int theBox;

    public Enigma(int numberOfBoxes, double scaleWeight) {
        this.numberOfBoxes = numberOfBoxes;
        this.scaleWeight = scaleWeight;
    }

    public int getNumberOfBoxes() {
        return numberOfBoxes;
    }

    public void setNumberOfBoxes(int numberOfBoxes) {
        this.numberOfBoxes = numberOfBoxes;
    }

    public double getScaleWeight() {
        return scaleWeight;
    }

    public void setScaleWeight(double scaleWeight) {
        this.scaleWeight = scaleWeight;
    }

    public int getTheBox() {
        return theBox;
    }

    public void setTheBox(int theBox) {
        this.theBox = theBox;
    }
    
    public void findBox() {
        double calculatedWeight = (this.numberOfBoxes * (1 + this.numberOfBoxes)) / 2;
        BigDecimal difBd = new BigDecimal(this.scaleWeight - calculatedWeight);
        BigDecimal result = difBd.divide(new BigDecimal(0.1), 0, RoundingMode.HALF_UP);
        this.theBox = result.intValueExact();
    }
}
