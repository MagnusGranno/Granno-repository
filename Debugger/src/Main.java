public class Main {
    package com.jetbrains;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

    public class CoordinatesCopy {
        public static void main(String[] args) throws IOException {
            List lineCoordinates = createCoordinateList();
            outputValues(lineCoordinates);
            Point p = new Point(13, 30);
            removeValue(lineCoordinates, p);
            outputValues(lineCoordinates);
        }

        private static void outputValues(List lineCoordinates) {
            System.out.println("Output values...");
            for (Point p : lineCoordinates) {
                System.out.println(p);
            }
        }

        private static void removeValue(List lineCoordinates, Point p) {
            lineCoordinates.remove(p);
        }

        private static List createCoordinateList() {
            ArrayList list = new ArrayList<>();
            list.add(new Point(12, 20));
            list.add(new Point(13, 30));
            return list;
        }
    }
}
