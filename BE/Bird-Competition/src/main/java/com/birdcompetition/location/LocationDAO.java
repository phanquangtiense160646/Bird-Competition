/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.birdcompetition.location;

import com.birdcompetition.bird.BirdDAO;
import com.birdcompetition.bird.BirdDTO;
import com.birdcompetition.util.DBHelper;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.NamingException;

/**
 *
 * @author admin
 */
public class LocationDAO {
    public boolean addLocation(LocationDTO location) throws SQLException, NamingException {
        Connection con = null;
        PreparedStatement stm = null;
        boolean result = false;
        try {
            //1. Make connection
            con = DBHelper.getConnection();
            if (con != null) {
                //2. Create SQL String 
                String sql = "INSERT INTO Location (Location, LinkMap, Status) VALUES (?, ?, 'true')";
                //3. Create Statement Object
                stm = con.prepareStatement(sql);

                stm.setString(1, location.getLocation());
                stm.setString(2, location.getLinkMap());
                
                

                //4. Execute Query
                int effectRows = stm.executeUpdate();
                //5. Process
                if (effectRows > 0) {
                    result = true;
                }
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(BirdDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return result;
    }
    
    List<LocationDTO> locationList;

    public List<LocationDTO> getLocationList() {
        return locationList;
    }
    
    public void getAllLocation()
            throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;

        try {
            //1. Make connection
            con = DBHelper.getConnection();
            if (con != null) {
                //2. Crate SQL String
                String sql = "Select * From Location "
                        + "Where Location.Status = 'true'";

                //3. Create Statement Object
                stm = con.prepareStatement(sql);

                //4. Execute query
                rs = stm.executeQuery();
                //5. Process
                while (rs.next()) {
                    int id = rs.getInt("LocationId");
                    String location = rs.getString("Location");
                    String linkmap = rs.getString("LinkMap");
                    

//                    String trainer = rs.getString("m.FullName");                     
                    //5.1.2 add data to list
                    LocationDTO dto = new LocationDTO(id, location, linkmap);
//                    System.out.println(dto.toString());
                    if (this.locationList == null) {
                        this.locationList = new ArrayList<>();
                    }
                    this.locationList.add(dto);
                }//end map DB to DTO
            }//end connection í available
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

    }
    
    public boolean deleteLocation(String id)
            throws SQLException, NamingException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        boolean result = false;
        try {
            //1.Make connection
            con = DBHelper.getConnection();
            if (con != null) {
                //2. Create SQL String 
                String sql = "Update Location "
                        + "Set Location.Status = 'false' "
                        + "Where Location.LocationID = ? ";
                //3. Create Statement Object
                stm = con.prepareStatement(sql);

                stm.setString(1, id);

                //4. Execute Query
                int exercute = stm.executeUpdate();
                //5. Process
                if (exercute > 0) {
                    return true;
                }
            }//end username and password is verified
        }//end connection is available   
        finally {
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return result;
    }
}
