package jspbook;

public class CalcBean {
	String op, num1, num2, result;
	
	public CalcBean() {
		op = "";
		num1 = "";
		num2 = "";
		result = "";
	}

	public String getOp() {
		return op;
	}

	public void setOp(String op) {
		this.op = op;
	}

	public String getNum1() {
		return num1;
	}

	public void setNum1(String num1) {
		this.num1 = num1;
	}

	public String getNum2() {
		return num2;
	}

	public void setNum2(String num2) {
		this.num2 = num2;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}
	
	public void calculate()
	{	
		switch(op)
		{
		case "+":
			result = String.format("%d", (Integer.parseInt(num1) + Integer.parseInt(num2)));
			break;
		case "-":
			result = String.format("%d", (Integer.parseInt(num1) - Integer.parseInt(num2)));
			break;
		case "*":
			result = String.format("%d", (Integer.parseInt(num1) * Integer.parseInt(num2)));
			break;
		case "/":
			result = String.format("%.2f", (Double.parseDouble(num1) / Double.parseDouble(num2)));
			break;
		default:
			result = "0";
			break;
		}
	}
}
