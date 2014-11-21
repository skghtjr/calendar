<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>

<table border="1">
<tr>
<td colspan="4" align="center">Calendaruser</td>
</tr>
<tr>
<td align="center">num</td>
<td align="center">id</td>
<td align="center">name</td>
<td align="center">email</td>
</tr>

<c:forEach var="user" items="${users}" varStatus="status">
<tr>
<td align="center" class="listtd"><c:out value="${status.count}"/></td>
<td align="center" class="listtd"><c:out  value="${user.id}"/></td>
<td align="left" class="listtd"><c:out value="${user.name}"/> </td>
<td align="center" class="listtd"><c:out value="${user.email}"/> </td>
</tr>
</c:forEach>
</table>

<br>

<table border="1">
<tr>
<td colspan="9" align="center">Event</td>
</tr>
<tr>
<td align="center">num</td>
<td align="center">id</td>
<td align="center">when</td>
<td align="center">summary</td>
<td align="center">description</td>
<td align="center">owner</td>
<td align="center">num_like</td>
<td align="center">event_level</td>
</tr>


<c:forEach var="event" items="${events}" varStatus="status">
<tr>
<td align="center" class="listtd"><c:out value="${status.count}"/></td>
<td align="center" class="listtd"><c:out  value="${event.id}"/></td>
<td align="left" class="listtd"><c:out value="${event.when.getTime()}"/> </td>
<td align="center" class="listtd"><c:out value="${event.summary}"/> </td>
<td align="center" class="listtd"><c:out value="${event.description}"/> </td>
<td align="center" class="listtd"><c:out value="${event.owner}"/> </td>
<td align="center" class="listtd"><c:out value="${event.numLikes}"/> </td>
<td align="center" class="listtd"><c:out value="${event.eventLevel}"/> </td>
</tr>
</c:forEach>
</table>

<Br>

<table border="1">
<tr>
<td colspan="4" align="center">EventAttendee</td>
</tr>
<tr>
<td align="center">num</td>
<td align="center">id</td>
<td align="center">event_id</td>
<td align="center">attendee_id</td>
</tr>
<c:forEach var="attendee" items="${attendees}" varStatus="status">
<tr>
<td align="center" class="listtd"><c:out value="${status.count}"/></td>
<td align="center" class="listtd"><c:out  value="${attendee.id}"/></td>
<td align="center" class="listtd"><c:out  value="${attendee.event.id}"/></td>
<td align="center" class="listtd"><c:out  value="${attendee.attendee.id}"/></td>
</tr>
</c:forEach>
</table>

</body>
</html>
