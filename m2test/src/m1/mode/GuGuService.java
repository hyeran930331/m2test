package m1.mode;

import java.util.*;

public class GuGuService {
	public ArrayList<String> getGuguDan(int dan){
		ArrayList<String> list = new ArrayList<String>();
		for(int i=1; i<10; i++) {
			list.add(dan +"*"+ i +"=" + (dan*i));
		}
		return list;
	}
}
