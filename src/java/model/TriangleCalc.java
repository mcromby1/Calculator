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
public class TriangleCalc {

    private int DIVIDE_2 = 2;

    public double getArea(String width, String length) {
        double wid;
        double len;
        try {
            if (width != null & length != null) {
                wid = Double.parseDouble(width);
                len = Double.parseDouble(length);
                return (wid * len) / DIVIDE_2;
            } else {
                return 0;
            }
        } catch (NumberFormatException e) {
            return 0;
        }

    }
}
