package folder;


public class Etudiant {
	protected String prenom;
	protected String nom;
	protected int age;
	protected String paysOrigine;
	protected String sportPratique;
	protected String groupeTD;
	
//	 public Etudiant(String prenom, String nom, int age, String paysOrigine, String sportPratique, String groupeTD) {
//	 	this.prenom = prenom;
//	 	this.nom = nom;
//	 	this.age = age;
//	 	this.paysOrigine = paysOrigine;
//	 	this.sportPratique = sportPratique;
//	 	this.groupeTD = groupeTD;
//	 }

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}
	
	public String getPaysOrigine() {
		return paysOrigine;
	}

	public void setPaysOrigine(String paysOrigine) {
		this.paysOrigine = paysOrigine;
	}

	public String getSportPratique() {
		return sportPratique;
	}

	public void setSportPratique(String sportPratique) {
		this.sportPratique = sportPratique;
	}

	public String getGroupeTD() {
		return groupeTD;
	}

	public void setGroupeTD(String groupeTD) {
		this.groupeTD = groupeTD;
	}

//	public void afficher() {
//		System.out.println(prenom);
//		System.out.println(nom);
//		System.out.println(age);
//	}
	
}