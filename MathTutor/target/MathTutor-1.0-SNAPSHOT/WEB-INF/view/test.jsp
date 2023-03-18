<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Test</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <img src="http://ivywatson.com/Logo.jpg"/>
        <img src="/Logo.jpg" width="683" height="656" alt="Logo"/>
        <img src="../img/Logo.jpg" width="683" height="656" alt="Logo"/>
        <img src="../img/math_background.jpeg" width="612" height="344" alt="math_background"/>
        <img src="../../img/Logo.jpg" width="683" height="656" alt="Logo"/>
        <img src ="<%=request.getContextPath()%>/../../img/Logo.jpg">
        <img src ="https://www.paulbui.net/img/buiWorking.jpg">

        <c:forEach items='${appts}' var='appt' varStatus='i'>
            var name = '${appt.subject}' + ' Appointment';
            var date = '${appt.date}';
            var time = '${appt.time}';
            var info = {eventName: name, calendar: 'Work', color: 'orange', eventDate: moment(date), eventTime: moment(time, "hh:mm:ss")};
            data.push(info);
        </c:forEach>

    </body>
</html>
