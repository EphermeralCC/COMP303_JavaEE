package com.musicstore.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.musicstore.vo.*;

public abstract class AlbumDAOImpl implements AlbumDAO {
	

	static {
		try {
			Class.forName("com.mysql.jdbc.driver");
		} catch (ClassNotFoundException e) {
			// print exception
		}
	}

	private Connection getConnection() throws SQLException {
		return DriverManager.getConnection("jdbc:mysql://localhost/MusicStore/music_store", "root", "");
	}

	private void closeConnection(Connection conn) {
		if (conn == null)
			return;
		try {
			conn.close();
		} catch (SQLException e) {
			// print exception
		}
	}

	public List<Album> findAllAlbums() {
		List<Album> result = new ArrayList<>();

		String sqlSelectAll = "Select * from album;";
		Connection conn = null;
		try {
			conn = getConnection();
			PreparedStatement statement = conn.prepareStatement(sqlSelectAll);
			ResultSet resultSet = statement.executeQuery();

			while (resultSet.next()) {
				Album album = new Album();
				// Author author=new Author();

				album.setAlbumID(resultSet.getInt("AlbumId"));
				album.setGenresID(resultSet.getInt("GenreId"));
				album.setArtistID(resultSet.getInt("ArtistId"));
				album.setTitle(resultSet.getString("Title"));
				album.setPrice(resultSet.getDouble("Price"));
				album.setAlbumArtUrl(resultSet.getString("AlbumArtUrl"));

				result.add(album);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeConnection(conn);
		}

		return result;

	}
}
