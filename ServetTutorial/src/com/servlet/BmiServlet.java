package com.servlet;

import java.io.IOException;
import java.text.DecimalFormat;
import java.text.NumberFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.user.UserBmi;

/**
 * Servlet implementation class BmiServlet
 */
@WebServlet("/BmiServlet")
public class BmiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BmiServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		String weight=request.getParameter("weight");
		String height=request.getParameter("height");
				
		double weightCalc = (0.45 * (Double.parseDouble(weight))); 
		double heightCalc = (0.025 *(Double.parseDouble(height)));	
		
		double unformattedBmi= ( weightCalc/(heightCalc*heightCalc));
			
		DecimalFormat df = new DecimalFormat("#0.00");  
		String formattedBmi = df.format(unformattedBmi);
								
		HttpSession session = request.getSession(true);
		UserBmi bmi = (UserBmi)session.getAttribute("bmi");	
		bmi.setUnformattedBmi(unformattedBmi);
		bmi.setBmi(formattedBmi);
		
		session.setAttribute("bmi", bmi);
		
		RequestDispatcher rs= request.getRequestDispatcher("bmifinder.jsp");
		rs.forward(request, response);
				
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
