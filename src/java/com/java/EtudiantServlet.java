package com.java;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import folder.Connex;
import folder.Etudiant;

@WebServlet("/EtudiantServlet")
public class EtudiantServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private Connex connex;
   
	public void init(){
		connex = new Connex();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String prenom = request.getParameter("prenom");
        String nom = request.getParameter("nom");
        int age = Integer.parseInt(request.getParameter("age"));
        String paysOrigine = request.getParameter("paysOrigine");
        String sportPratique = request.getParameter("sportPratique");
        String groupeTD = request.getParameter("groupeTD");

		Etudiant etudiant = new Etudiant();
		etudiant.setPrenom(prenom);
        etudiant.setNom(nom);
        etudiant.setAge(age);
        etudiant.setPaysOrigine(paysOrigine);
        etudiant.setSportPratique(sportPratique);
        etudiant.setGroupeTD(groupeTD);

		try {
            connex.enregistreEtudiant(etudiant);
        } catch (Exception e) {
 
            e.printStackTrace();
        }
                this.getServletContext().getRequestDispatcher("/WEB-INF/welcome.jsp").forward(request, response);
		
	}

}