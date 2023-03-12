package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.BLManager;
import com.pojo.Fertilizer;

/**
 * Servlet implementation class DeleteFertilizerServlet
 */
@WebServlet("/DeleteFertilizerServlet")
public class DeleteFertilizerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       BLManager blm=new BLManager();
       Fertilizer f=new Fertilizer();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteFertilizerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		String id=request.getParameter("frid");
		int id1=Integer.parseInt(id);
		
		f=blm.SearchByid(id1);
		
		blm.delete(f);
		out.print("<script type=\"text/javascript\">");
		out.print("alert('record deleted sucessfully...');");
		out.print("location='viewfertilizer.jsp';");
		out.print("</script>");
	
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
