package controller;

import java.util.List;
import java.util.ArrayList;

import musicstore.Album;

public interface AlbumDAO {
	
	public List<Album> findAllAlbums();

	public List<Album> searchBooksByKeyword(String keyword);

	public void insert(Album album);

	public void update(Album album);

	public void delete(int albumID);

}
