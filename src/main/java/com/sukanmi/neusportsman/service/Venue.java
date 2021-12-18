package com.sukanmi.neusportsman.service;

import java.util.List;
import java.util.ArrayList;

public class Venue {
	
	private List<String> locations;
	
	public Venue() {
		/**
		 * default constructor
		 */
		locations = new ArrayList<String>();
		locations.add("Mathews Arena");
		locations.add("Parsons Field");
		locations.add("Marino");
		locations.add("Cabot");
	}

	public List<String> getLocations() {
		return locations;
	}

	public void setLocations(List<String> locations) {
		this.locations = locations;
	}

}
