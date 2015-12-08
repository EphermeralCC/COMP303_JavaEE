package com.musicstore.dao;

import java.util.ArrayList;
import java.util.List;

import com.musicstore.vo.Album;
import com.musicstore.vo.Order;

public class TestInsertOrder {

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
		
		Order order=new Order();
		
		// order.setOrderID(1);
		
		order.setFirstName("3");
		order.setLastName("4");
		order.setAddress("5");
		order.setCity("6");
		order.setState("7");
		order.setPostalCode("8");
		order.setCountry("9");
		order.setPhone("10");
		order.setEmail("11");
		order.setTotal(12);
		
		OrderDAOImpl orderInsert = new OrderDAOImpl();
		orderInsert.insert(order);
	}

}
