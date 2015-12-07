package com.musicstore.dao;

import java.util.ArrayList;
import java.util.List;

import com.musicstore.vo.Album;
import com.musicstore.vo.Artist;
import com.musicstore.vo.Genre;

public class TestRun {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		List<Album> albumList = new ArrayList<>();
		
		AlbumDAOImpl album = new AlbumDAOImpl();
		albumList = album.findAllAlbums();

		for (int index = 0; index < albumList.size(); index++) {
			// System.out.println(result.get(index));
			System.out.print(albumList.get(index).getAlbumID() + "/" + albumList.get(index).getGenre() + "/"
					+ albumList.get(index).getArtist() + "/" + albumList.get(index).getTitle() + "/"
					+ albumList.get(index).getPrice() + "/" + albumList.get(index).getAlbumArtUrl() + "/\n");
		}

	}

}
