/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.birdcompetition.news;

import com.birdcompetition.util.DBHelper;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author MSI
 */
public class NewsDAO {

    Connection con = null;
    PreparedStatement stm = null;
    ResultSet rs = null;

    private List<NewsDTO> newsList;

    public List<NewsDTO> getList() {
        return newsList;
    }

    public List<NewsDTO> getNews()
            throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
//        boolean result = false;

        try {
            //1.Make connection
            con = DBHelper.getConnection();
            //check 
            if (con != null) {
                //2.Creat SQL String 
                String sql = "Select * "
                        + "From News\n";
                //3.Create Statement Object
                stm = con.prepareStatement(sql);

                //4.Exercute Query
                rs = stm.executeQuery();
                //5.Process
                while (rs.next()) {
                    int id = rs.getInt("IdNews");
                    String newsName = rs.getString("NameOfNews");
                    Date date = rs.getDate("date");
                    String descrip = rs.getString("Description");
                    String newsLink = rs.getString("LinkOfNews");
                    String photo = rs.getString("Photo");
                    String idUser = rs.getString("IdUser");

                    NewsDTO dto = new NewsDTO(id, newsName, date, descrip, newsLink, photo, idUser);

                    if (this.newsList == null) {
                        this.newsList = new ArrayList<>();
                    }
                    newsList.add(dto);
                }
                return newsList;
            }

        } finally {
            if (rs != null) {
                rs.close();
            }
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return null;
    }
//    public static void main(String[] args) throws SQLException, ClassNotFoundException {
//        NewsDAO dao = new NewsDAO();
//        List<NewsDTO> list = dao.getNews();
//        for (NewsDTO newsDTO : list) {
//            System.out.println(newsDTO);
//            
//        }
//    }

    public NewsDTO getNewsById(int id)
            throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        NewsDTO news = new NewsDTO();

        try {
            //1.Make connection
            con = DBHelper.getConnection();
            //check 
            if (con != null) {
                //2.Creat SQL String 
                String sql = "Select * "
                        + "From News "
                        + "Where IdNews = ? ";
                //3.Create Statement Object
                stm = con.prepareStatement(sql);

                stm.setInt(1, id);
                //4.Exercute Query
                rs = stm.executeQuery();
                //5.Process
                while (rs.next()) {
//                    String id = rs.getString("IdNews");
                    String newsName = rs.getString("NameOfNews");
                    Date date = rs.getDate("date");
                    String descrip = rs.getString("Description");
                    String newsLink = rs.getString("LinkOfNews");
                    String photo = rs.getString("Photo");

                    news = new NewsDTO(newsName, photo, descrip, newsLink);
                }
            }
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return news;
    }

    
}
