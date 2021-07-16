/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import folder.Connex;
import folder.Etudiant;

/**
 *
 * @author Lenovo
 */
@WebServlet(name = "AddEtudiant", urlPatterns = {"/AddEtudiant"})
public class AddEtudiant extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    public Connex connex;
   
	public void init(){
		connex = new Connex();
	}
   // protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    //        throws ServletException, IOException {
        
   // }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
       this.getServletContext().getRequestDispatcher("/WEB-INF/AddEtudiant.jsp").forward(request, response);
   }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       // processRequest(request, response);
        
         String prenom = request.getParameter("prenom");
        String nom = request.getParameter("nom");
        String nationalite = request.getParameter("nationalite");
        String niveau = request.getParameter("niveau");
        String bday = request.getParameter("bday");
        String sport = request.getParameter("sport");
        String email = request.getParameter("email");
        String tel = request.getParameter("contact_no");
        String groupe = request.getParameter("groupe");
        
        Etudiant etudiant = new Etudiant();
        etudiant.setPrenom(prenom);
        etudiant.setNom(nom);
        etudiant.setPaysOrigine(nationalite);
        etudiant.setSportPratique(sport);
        etudiant.setGroupeTD(groupe);

	try {
            connex.enregistreEtudiant(etudiant);
        } catch (Exception e) {
 
            e.printStackTrace();
        }
                
                 this.getServletContext().getRequestDispatcher("/WEB-INF/welcome.jsp").forward(request, response);
	
	
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
   
}
