package com.musicstore.vo;

public class AlbumVO {
	
	public AlbumVO() {
	}

	private String albumID;
	private String genresID;
	private String artistID;
	private String title;
	private double price;
	private String albumArtUrl;

	public String getAlbumID() {
		return albumID;
	}

	public void setAlbumID(String albumID) {
		this.albumID = albumID;
	}

	public String getGenresID() {
		return genresID;
	}

	public void setGenresID(String genresID) {
		this.genresID = genresID;
	}

	public String getArtistID() {
		return artistID;
	}

	public void setArtistID(String artistID) {
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
