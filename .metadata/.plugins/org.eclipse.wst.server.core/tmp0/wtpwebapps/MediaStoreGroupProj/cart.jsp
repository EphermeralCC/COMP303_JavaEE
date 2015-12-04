<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="headerHome.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>

<%@include file="user-navigation.jsp" %>
<%@include file="site-navigation.jsp" %>
<div id="cartWrapper">
                    <div id="cartTitle">
                       Your Cart 
                    </div>
                    <div id="cartInstruct">
                        Check the box next to the item and click the Update Cart button to remove the item.
                    </div>
                    <br>
                    <br>

                    <form action="#" id="cartForm">
                        <table id="cartTable">
                            <tr>
                                <th id="item">Item</th>
                                <th id="price">Price</th>
                                <th id="quantity">Quantity</th>
                                <th id="total">Total</th>
                                <th id="remove"></th>
                            </tr>
                         
                            <c:forEach items="${cart}" var="item">
                                <tr>
                                <c:forEach items="${item}" var="i">
                                        <td id="item">
                                          ${i}
                                        </td>

                                </c:forEach>
                                        <td id="remove"><input type="checkbox" />Remove</td>
                                    </tr>
                            </c:forEach>
                          
                        </table>
                    </form>
                    <br>
                    <form id="cartUpdate" action="cart.jsp">
                        <input type="submit" value="Update Cart">
                    </form>
                    <form id="cartCheckout" action="order.jsp">
                        <input type="submit" value="Checkout">
                    </form>
                </div>
            </div>

            <%@include file="footerHome.jsp" %>
        </div>
</body>
</html>