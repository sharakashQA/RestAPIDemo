package resources;

//enum is special class in java which has collection of constants and methods.
public enum APIresources {
	
	AddPlaceAPI("/maps/api/place/add/json"),
	GetPlaceAPI("/maps/api/place/get/json"),
	DeletePlaceAPI("/maps/api/place/delete/json");
	
	private String resource;
	
	APIresources(String string) {
		this.resource = string;
		
	}

	public String getResource() {
		return resource;
	}
	
	
	

}
