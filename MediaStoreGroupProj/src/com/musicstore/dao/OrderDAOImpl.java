package com.musicstore.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.musicstore.vo.Order;

public class OrderDAOImpl implements OrderDAO {

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

	@Override
	public List<Order> findAllOrders() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Order> searchOrderByKeyword(String keyword) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insert(Order order) {
		// TODO Auto-generated method stub
		int id = 1;
		Connection conn = null;
		try {

			conn = getConnection();

			PreparedStatement stmt = conn.prepareStatement("SELECT OrderId FROM orders;");
			ResultSet resultSet = stmt.executeQuery();

			while (resultSet.next()) {
				if (id <= resultSet.getInt("OrderId")) {
					id = resultSet.getInt("OrderId") + 1;
				} else {

				}
			}
			order.setOrderID(id);
			String sqlInsertOrder = "INSERT INTO orders (OrderId, OrderDate, FirstName, LastName, Address, City, State, PostalCode, Country, Phone, Email, Total) "
					+ "VALUES(" + " ?" + "," // Order ID
					+ " CURRENT_TIMESTAMP," // Date
					+ " ?" + "," // First Name
					+ " ?" + "," // Last Name
					+ " ?" + "," // Address
					+ " ?" + "," // City
					+ " ?" + "," // State
					+ " ?" + "," // Postal Code
					+ " ?" + "," // Country
					+ " ?" + "," // Phone
					+ " ?" + "," // Email
					+ " ?" + ");"; // Total

			PreparedStatement statement = conn.prepareStatement(sqlInsertOrder);
			statement.setInt(1, order.getOrderID());
			// statement.setString(2, "CURRENT_TIMESTAMP");
			statement.setString(2, order.getFirstName());
			statement.setString(3, order.getLastName());
			statement.setString(4, order.getAddress());
			statement.setString(5, order.getCity());
			statement.setString(6, order.getState());
			statement.setString(7, order.getPostalCode());
			statement.setString(8, order.getCountry());
			statement.setString(9, order.getPhone());
			statement.setString(10, order.getEmail());
			statement.setDouble(11, order.getTotal());

			statement.executeUpdate();
			System.out.println(order.getOrderID() + "/" + order.getOrderDate() + "/" + order.getFirstName() + "/"
					+ order.getLastName() + "/" + order.getAddress() + "/" + order.getCity() + "/" + order.getState()
					+ "/" + order.getPostalCode() + "/" + order.getCountry() + "/" + order.getPhone() + "/"
					+ order.getEmail() + "/" + order.getTotal());
			System.out.println(sqlInsertOrder);
			System.out.println(statement);

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeConnection(conn);
		}
	}

	@Override
	public void update(Order order) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(int albumID) {
		// TODO Auto-generated method stub

	}

}
