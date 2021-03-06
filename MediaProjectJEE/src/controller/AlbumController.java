package controller;

import musicstore.Album;
import database.DB_Conn;

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



/**
 * Servlet implementation class AlbumController
 */
@WebServlet("/AlbumController")
public class AlbumController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AlbumController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
		
		response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String url = "/item.jsp";
            String albumID = request.getParameter("AlbumId");
            String query = "SELECT * FROM albums WHERE AlbumId='"+albumID+"'";
            
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
            
            Album itemInfo = new Album();
            
            while(rs.next())
            {	
                itemInfo.setAlbumID(rs.getInt(1));
                itemInfo.setGenresID(rs.getInt(2));
                itemInfo.setArtistID(rs.getInt(3));
                itemInfo.setTitle(rs.getString(4));
                itemInfo.setPrice(rs.getDouble(5));
                itemInfo.setAlbumArtUrl(rs.getString(6));
            }

            /**
             * set attributes for the page view
             */
            request.setAttribute("albumID", itemInfo.getAlbumID());
            request.setAttribute("albumImageURL", itemInfo.getAlbumArtUrl());
            request.setAttribute("Title", itemInfo.getTitle());
            request.setAttribute("artistID", itemInfo.getArtistID());
            request.setAttribute("price", itemInfo.getPrice());
            request.setAttribute("GenreID", itemInfo.getGenresID());

           
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
