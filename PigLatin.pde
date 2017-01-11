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
public int findFirstVowel(String sWord)
{
  for(int i = 0; i < sWord.length(); i++)
  {
    String x = sWord.substring(i, i+1);
    if(x.equals("a")||x.equals("e")||x.equals("i")||x.equals("o")||x.equals("u"))
      return i;
  }
	return -1;
}

public String pigLatin(String sWord)
{
  if(findFirstVowel(sWord) == 0)
  {
      return sWord + "way";
  }
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
  if(sWord.substring(0,2).equals("qu"))
  {
    String a = sWord.substring(0, 2);
    String b = sWord.substring(2, sWord.length());
    return b + a + "ay";
  }
  if(findFirstVowel(sWord) != -1 && findFirstVowel(sWord) != 0)
  {
    String c = sWord.substring(0, findFirstVowel(sWord));
    String d = sWord.substring(findFirstVowel(sWord), sWord.length());
    return d + c + "ay";
  }
	else
	{
		return "ERROR!";
	}
}