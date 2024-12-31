package de.ascdev.demo.helloworldwebapp;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.StringReader;

public class Foo {
	
	public String doSomething (String text) {
		return "###"+text+"###";
	}
	
	public void bar() {
		
	    String menu = "Best Pizza\n"
	       + "Margherita: tomato sauce, mozzarella\n"
	       + "Funghi: tomato sauce, mozzarella, mushrooms\n"
	       + "Capricciosa: tomato sauce, mozzarella, mushrooms, ham,"
	       + "eggs, artichoke, cocktail sausages, green olives\n"
	       + "Quattro Stagioni: tomato sauce, mozzarella, ham, black "
	       + "olives, mushrooms, artichoke, peas, salami, eggs\n"
	       + "Vegetariana: tomato sauce, mozzarella, mushrooms, onion, "
	       + "(artichoke), sweet corn, green peppers\n"
	       + "Quattro Formaggi: tomato sauce, and 4 assorted cheeses, "
	       + "generally mozzarella, parmesan cheese, blue cheese, and goat cheese\n";
	    
	    BufferedReader br = new BufferedReader(new StringReader(menu));
	   	    
	    String line = null;
        
        try {
			while((line = br.readLine())!= null) {				
				String[] pizz = line.split(":");	
				
				if (pizz != null && pizz.length >1) {				
			    System.out.println("<b>" + pizz[0] + ":<b>" + pizz[1]);
				}
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    
	    
	   
	}
}
