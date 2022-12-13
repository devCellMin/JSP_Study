package JB_2_Calc;

public class JB_CalcBean {
	String num1;
	String op;
	String num2;
	
	public JB_CalcBean() {
		
	}

	public String getNum1() {
		return num1;
	}

	public void setNum1(String num1) {
		this.num1 = num1;
	}

	public String getOp() {
		return op;
	}

	public void setOp(String op) {
		this.op = op;
	}

	public String getNum2() {
		return num2;
	}

	public void setNum2(String num2) {
		this.num2 = num2;
	}

	public String calculate() {
		switch(op){
		case "+": 
			return String.format("%d", Integer.parseInt(num1)+Integer.parseInt(num2));
		case "-":
			return String.format("%d", Integer.parseInt(num1)-Integer.parseInt(num2));
		case "*":
			return String.format("%d", Integer.parseInt(num1)*Integer.parseInt(num2));
		case "/":
			return String.format("%.2f", Double.parseDouble(num1)/Double.parseDouble(num2));
		case "%":
			return String.format("%d", Integer.parseInt(num1)%Integer.parseInt(num2));
		default: return null;
		}
	}
	
}
