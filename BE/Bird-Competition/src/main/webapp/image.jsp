<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Uploaded Image</title>
</head>
<body>
    <form action="upload" method="post" enctype="multipart/form-data">
        <input type="file" name="file" accept="image/*">
        <input type="submit" value="Upload">
    </form>
    <h1>Uploaded Image</h1>
    <img src="${imageUrl}" alt="Uploaded Image">
</body>
</html>