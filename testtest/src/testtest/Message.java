package testtest;

public class Message {
	private String message;
	int code;
	public  Message() {
		this.code = 0;
		this.message = null;
	}
	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	
}
