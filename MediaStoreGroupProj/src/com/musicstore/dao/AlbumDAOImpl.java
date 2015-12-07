package com.musicstore.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.musicstore.vo.*;

public class AlbumDAOImpl implements AlbumDAO {

	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// print exception
		}
	}

	private Connection getConnection() throws SQLException {
		return DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/music_store?user=root");
	}

	private void closeConnection(Connection conn) {
		if (conn == null)
			return;
		try {
			conn.close();
		} catch (SQLException e) {
			// print exception
			System.out.println(e);
		}
	}

	public List<Album> findAllAlbums() {
		List<Album> result = new ArrayList<>();
		List<Genre> genreList = new ArrayList<>();
		List<Artist> artistList = new ArrayList<>();

		String sqlSelectAll = "SELECT albums.AlbumId," + "genres.Name AS 'GenreName', "
				+ "artists.Name AS 'ArtistName', " + "albums.Title, " + "albums.Price, " + "albums.AlbumArtUrl "
				+ "FROM albums " + "INNER JOIN genres ON albums.GenreId = genres.GenreId "
				+ "INNER JOIN artists ON albums.ArtistId = artists.ArtistId" + " ORDER BY albums.AlbumId;";
		Connection conn = null;
		try {
			conn = getConnection();
			PreparedStatement statement = conn.prepareStatement(sqlSelectAll);
			ResultSet resultSet = statement.executeQuery();

			while (resultSet.next()) {
				Album album = new Album();
				Artist artist = new Artist();
				Genre genre = new Genre();
				// Author author=new Author();

				album.setAlbumID(resultSet.getInt("AlbumId"));
				album.setGenre(resultSet.getString("GenreName"));				
				album.setArtist(resultSet.getString("ArtistName"));				
				album.setTitle(resultSet.getString("Title"));
				album.setPrice(resultSet.getDouble("Price"));
				album.setAlbumArtUrl(resultSet.getString("AlbumArtUrl"));
				
				genreList.add(genre);
				artistList.add(artist);
				
				result.add(album);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeConnection(conn);
		}

		return result;

	}

	@Override
	public List<Album> searchBooksByKeyword(String keyword) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insert(Album album) {
		// TODO Auto-generated method stub

	}

	@Override
	public void update(Album album) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(int albumID) {
		// TODO Auto-generated method stub

	}
}
