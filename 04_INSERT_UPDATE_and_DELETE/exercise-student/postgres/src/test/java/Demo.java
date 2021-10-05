import java.util.Arrays;

public class Demo {

    public static void main(String[] args) {

        System.out.println(reverseStr("eating like I"));

        String[] food = {"potato", "potato", "salad", "elephant", "medicine", "vessel"};

        String[] countArray = {"i", "o", "u", "w", "c", "a","d", "e", "l", "l",
                "b", "e", "o", "c", "v", "w", "d", "c"};

        System.out.println(numOfFood(food, "salad"));

        System.out.println(createWord(countArray));

    }


    public static String reverseStr(String word) {
        String[] res = word.split(" ");
        String[] result = new String[res.length];
        for(int i = 0; i < res.length; i++) {
            result[i] = res[res.length - 1 - i];
        }
        String words = " ";
        for(String letter: result) {
            words += letter + " ";
        }

        return words ;
    }

    public static int  numOfFood(String[] foodArray, String food) {
        int count = 0;
        for(int i = 0; i < foodArray.length; i++) {
            if(foodArray[i].equalsIgnoreCase(food)) {
                count++;
            }
        }
        return count;
    }



    public static int createWord(String[] letterArray) {
        int countForC = 0;
        int countForO = 0;
        int countForL = 0;
        int countForD = 0;

        for(int i =0; i < letterArray.length; i++) {
            if(letterArray[i].equals("c")){
                countForC++;
            }
            else if(letterArray[i].equals("o")) {
                countForO++;
            }
            else if(letterArray[i].equals("l")) {
                countForL++;
            }
            else if(letterArray[i].equals("d")) {
                countForD++;
            }
        }
       // if(countForC == countForO && countForO == countForL && countForL == countForD) {
          //  return countForC;
       // }
        return countForD;
    }


}
