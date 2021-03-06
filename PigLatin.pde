import java.util.*;

public void setup() {
	String lines[] = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) {
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
}
public int findFirstVowel(String sWord) {
		for (int i = 0; i< sWord.length(); i++) {
			char y = sWord.charAt(i);

			if (sWord.charAt(0)=='q' && sWord.charAt(1)=='u') {
				return -2;
			}

			if (y == 'a' || y == 'e' || y == 'i' || y == 'o' || y == 'u' ) {
				return i;

			}

		}
	return -1;
}

public String pigLatin(String sWord)

//postcondition: returns the pig latin equivalent of sWord
{
	if (findFirstVowel(sWord)== 0) {
		return sWord + "way";
	}

	if (findFirstVowel(sWord)==-2) {

		String qu = sWord.substring(0,2);
		String rest = sWord.substring(2,sWord.length());
		return rest + qu + "ay";


	} else if (findFirstVowel(sWord) != 0) {
		String letters = sWord.substring(0,findFirstVowel(sWord));
		String word = sWord.substring(findFirstVowel(sWord),sWord.length());
		return word + letters + "ay";
	}	

	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	else
	{
		return "ERROR!";
	}
}
