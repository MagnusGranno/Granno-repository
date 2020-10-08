package Task2;


import java.util.ArrayList;

public class Main {
    public static void main(String[] args)
    {
        Room room = new Room(4, 1, 2,1);
        Room room1 = new Room(5, 2, 1, 4);
        Room room2 = new Room(4, 2, 3, 2);

        ArrayList<Room> aRooms = new ArrayList<>();
        aRooms.add(room);
        aRooms.add(room1);
        aRooms.add(room2);

        Building building = new Building(aRooms,4, 2,true);

        int totalLamps = 0;
        for(Room i : building.getRooms())
        {
            totalLamps += i.getNumberOfLamps();
        }

        System.out.println(totalLamps);

        if(building.getNumberOfFloors() > building.getRooms().size())
        {
            System.out.println("This is an odd building!");
        }
        else
        {
            System.out.println("This is a perfectly normal building!");
        }

    }
}
