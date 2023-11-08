/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.birdcompetition.uploadimgbycloud;

import com.cloudinary.Cloudinary;
import com.cloudinary.Transformation;
import com.cloudinary.utils.ObjectUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Map;

/**
 *
 * @author Admin
 */
@MultipartConfig
@WebServlet(name = "ImageUploadServlet", urlPatterns = {"/ImageUploadServlet"})
public class ImageUploadServlet extends HttpServlet {
    
    


    private Cloudinary cloudinary;

    @Override
    public void init() throws ServletException {
        super.init();

        cloudinary = new Cloudinary(ObjectUtils.asMap(
                "cloud_name", "djrmi26ce",
                "api_key", "861516554924849",
                "api_secret", "0ang3WoDYTPqWwmpPcr5JChZIJY"));

    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        // Get the uploaded image file from the request
        Part filePart = request.getPart("image");
        int id = Integer.parseInt(request.getParameter("birdID"));
        InputStream fileInputStream = filePart.getInputStream();
        String url = "birdprofile.jsp";
        
        String contentType = filePart.getContentType();
        
        
        if (!"image/jpg".equals(contentType) || !"image/png".equals(contentType) || filePart == null) {
            HttpSession session = request.getSession();
            request.setAttribute("mes", "Chưa thêm ảnh hoặc sai định dạng");
            
        }else{
            HttpSession session = request.getSession();
            request.setAttribute("mes", "Cập nhật ảnh thành công");
        }
        
        try {
            // Read the file content into a byte array
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] buffer = new byte[4096];
        int bytesRead;
        while ((bytesRead = fileInputStream.read(buffer)) != -1) {
            byteArrayOutputStream.write(buffer, 0, bytesRead);
        }
        byte[] fileBytes = byteArrayOutputStream.toByteArray();

        // Upload the image to Cloudinary
        Map<String, Object> uploadResult = cloudinary.uploader().upload(fileBytes, ObjectUtils.emptyMap());

        // Get the public URL of the uploaded image
        String imageUrl = (String) uploadResult.get("url");
        
            
        String transformedImageUrl = transformImageUrl(imageUrl);
        
        // Store the image URL in the session
        HttpSession session = request.getSession();
        session.setAttribute("imageUrl", transformedImageUrl);
        
        
        
        url = "DispatchServlet?btAction=BirdProfile&txtBirdID=" + id;
        
        Connection connection = null;
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection("jdbc:sqlserver://"
                    + "localhost:1433;"
                    + "databaseName=BirdCompetitionDB;"
                    + "encrypt=true;trustServerCertificate=true;", "sa", "12345");
            PreparedStatement stmt;
            String query = "Update Bird Set PhotoPath = ? "
                    + "Where IdBird = ? ";
            stmt = connection.prepareStatement(query);
            stmt.setString(1, imageUrl);
            stmt.setInt(2, id);
            int row = stmt.executeUpdate(); // it returns no of rows affected.

            if (row > 0) {
                System.out.println("Image added into database successfully.");
            } else {
                System.out.println("Failed to upload image.");
            }

        } catch (Exception e) {
            System.out.println(e);
        }

            
        } catch (Exception e) {
             e.printStackTrace();
        } finally{
           response.sendRedirect(url);
        }
        
        // Redirect to the image display page
        
        //--------------------------------------------------
        
        
        
    }
    
        private String transformImageUrl(String imageUrl) {
        Transformation transformation = new Transformation()
            .gravity("auto")
            .height(800)
            .width(800)
            .crop("crop");

        return cloudinary.url().transformation(transformation).generate(imageUrl);
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    
    
     
}
