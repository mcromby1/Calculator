package model;

/**
 *
 * @author user test
 */
public class RectangleCalc {

    public double getArea(String width, String length) {
        double wid;
        double len;
        try {
            if (width != null & length != null) {
                wid = Double.parseDouble(width);
                len = Double.parseDouble(length);
                return wid * len;
            } else {
                return 0;
            }
        } catch (NumberFormatException e) {
            return 0;
        }
    }
}
