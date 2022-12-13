package JE_1117;

public class ProductInfo {
	String prod_Name;
	int prod_Price;
	
	public ProductInfo() {
		this.prod_Name = "";
	}
	
//	public ProductInfo(String prod_Name, int prod_Price) {
//		this.prod_Name = prod_Name;
//		this.prod_Price = prod_Price;
//	}

	public String getProd_Name() {
		return prod_Name;
	}

	public void setProd_Name(String prod_Name) {
		this.prod_Name = prod_Name;
	}

	public int getProd_Price() {
		return prod_Price;
	}

	public void setProd_Price(int prod_Price) {
		this.prod_Price = prod_Price;
	}
	
}
