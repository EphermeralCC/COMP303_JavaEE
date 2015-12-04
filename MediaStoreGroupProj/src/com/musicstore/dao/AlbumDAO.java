package com.musicstore.dao;

import java.util.List;
import java.util.ArrayList;
import com.musicstore.vo.Album;

public interface AlbumDAO {
	public List<Album> findAllAlbums();
	public List<Album> searchBooksByKeyword(String keyword);
	// public List<Category> findAllCategories();
	public void insert(Album album);
	public void update(Album album);
	public void delete(int albumID);
	
	
}
