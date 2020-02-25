package pizza;

public class Pizza {
		private String name;
		private String[] topping;
		private int sum;
		
		Pizza(){	
		}
		
		public Pizza(String name, String[] topping, int sum) {
			this.name = name;
			this.topping = topping;
			this.sum = sum;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public String[] getTopping() {
			return topping;
		}

		public void setTopping(String[] topping) {
			this.topping = topping;
		}

		public int getSum() {
			return sum;
		}

		public void setSum(int sum) {
			this.sum = sum;
		}
}
