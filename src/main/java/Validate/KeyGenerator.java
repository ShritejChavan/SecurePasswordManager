package Validate;

public class KeyGenerator {
	public static String generateKey() {
		String key = "";
	    String lowercaseChars = "abcdefghijklmnopqrstuvwxyz";
	    String uppercaseChars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	    String digits = "0123456789";
	    String specialChars = "!@#$%^&*()-=+";
	    
	    for(int i = 1; i <= 10; i++) {
	    	int j = (int) ((Math.random() * 4) + 1);
	    	if(j == 1) {
	    		key += lowercaseChars.charAt((int) ((Math.random() * lowercaseChars.length())));
	    	} else if(j == 2) {
	    		key += uppercaseChars.charAt((int) ((Math.random() * uppercaseChars.length())));
	    	} else if(j == 3) {
	    		key += digits.charAt((int) ((Math.random() * digits.length())));
	    	} else {
	    		key += specialChars.charAt((int) ((Math.random() * specialChars.length())));
	    	}
	    }
	    
		return key;
	}
	
	public static void main(String[] args) {
		System.out.println(generateKey());
	}
}
