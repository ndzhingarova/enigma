/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nikilearn.entities;

import java.util.Arrays;
import java.util.Collection;
import org.junit.Test;
import static org.junit.Assert.*;
import org.junit.runner.RunWith;
import org.junit.runners.Parameterized;

/**
 *
 * @author nikoleta
 */
@RunWith(Parameterized.class)
public class EnigmaTest {
    private int boxes;
    private double scale;
    private int theBox;

    public EnigmaTest(int boxes, double scale, int theBox) {
        this.boxes = boxes;
        this.scale = scale;
        this.theBox = theBox;
    }
    
    @Parameterized.Parameters
    public static Collection liste() {
        Object[][] lp = {{10433, 54428961.5, 5}, {10433, 54428962.6,16 }, {10433, 54429061,1000},
            {10433, 54429881.2, 9202},{10433, 54429061.3, 1003},{10433, 54429387.9, 4269},
            {10433, 54429719, 7580}, {10433, 54429613.3, 6523},{10433, 54429696.4, 7354},
            {10433, 54429171.1, 2101},{10433, 54429453, 4920} };
        return Arrays.asList(lp);
    }

    @Test
    public void testFindBox() {
        System.out.println("findBox");
        Enigma enigma = new Enigma(boxes, scale);
        enigma.findBox();
        assertEquals(theBox, enigma.getTheBox());
    }
    
    
}
