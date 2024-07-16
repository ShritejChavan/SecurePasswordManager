package Operations;

public class PerformOperations {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String message = "ShritejChavan_05";
		String encryp = Encrypter.encrypt(message, "mysecretkey");
		String decryp = Decrypter.decrypt(encryp, "mysecretkey");
		System.out.println("Original Message: " + message);
		System.out.println("Encrypted Message: " + encryp);
		System.out.println("Decrypted Message: " + decryp);
	}

}
