package com.musicstore.vo;

public class Album {

	public Album() {
	}

	private int albumID;
	private int genresID;
	private int artistID;
	private String title;
	private double price;
	private String albumArtUrl;

	public int getAlbumID() {
		return albumID;
	}

	public void setAlbumID(int albumID) {
		this.albumID = albumID;
	}

	public int getGenresID() {
		return genresID;
	}

	public void setGenresID(int genresID) {
		this.genresID = genresID;
	}

	public int getArtistID() {
		return artistID;
	}

	public void setArtistID(int artistID) {
		this.artistID = artistID;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getAlbumArtUrl() {
		return albumArtUrl;
	}

	public void setAlbumArtUrl(String albumArtUrl) {
		this.albumArtUrl = albumArtUrl;
	}

}
