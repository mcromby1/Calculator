/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author user test
 */
public class CircleCalc {

    private double POWER_2 = 2;

    public double getArea(String radius) {
        double rad;
        try {
            if (radius != null) {
                rad = Double.parseDouble(radius);
                return (Math.PI * (Math.pow(rad, POWER_2)));
            } else {
                return 0;
            }
        } catch (NumberFormatException e) {
            return 0;
        }
    }

}
