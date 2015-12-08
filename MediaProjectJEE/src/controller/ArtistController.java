package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.DB_Conn;
import musicstore.Artist;

/**
 * Servlet implementation class ArtistController
 */
@WebServlet("/ArtistController")
public class ArtistController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ArtistController() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
    	
		response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String url = "/album.jsp";
            String albumID = request.getParameter("Name");
            String query = "SELECT * FROM artists";
            
            try{
                Class.forName("com.mysql.jdbc.Driver");
            } catch (Exception ex) {
                out.println("No connection");
            }
            
            Connection conn = null;
             try {
                 conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/music_store", "root", "admin");
             } catch(SQLException ex) {
                 out.println("SQLException: " + ex.getMessage());
                 out.println("SQLState: " + ex.getSQLState());
             }
            
            Statement stmt = null;
            ResultSet rs = null;
            
            try {
                stmt = conn.createStatement();
                rs = stmt.executeQuery(query);
                
                if(stmt.execute(query))
                    rs = stmt.getResultSet();
            } catch (SQLException ex) {
                out.println("SQLException: " + ex.getMessage());
            }
            
            Artist artistInfo = new Artist();
            
            while(rs.next())
            {	
            	artistInfo.setName(rs.getString(1));

            }

            request.setAttribute("Name", artistInfo.getName());
           
            getServletContext()
                    .getRequestDispatcher(url)
                    .forward(request, response);
            
        }
		
	}
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(AlbumController.class.getName()).log(Level.SEVERE, null, ex);
        }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(AlbumController.class.getName()).log(Level.SEVERE, null, ex);
        }
	}

}
