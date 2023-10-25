/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.birdcompetition.contest;

import com.birdcompetition.util.DBHelper;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


/**
 *
 * @author admin
 */
public class ContestDAO {
    private List<ContestDTO> contestList;

    public List<ContestDTO> getContestList() {
        return contestList;
    }
    
    public void getContestList(String userName)
        throws SQLException, ClassNotFoundException{
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        boolean result = true;
        

        try {
            //1. Make connection
            con = DBHelper.getConnection();
            if(con != null){
                //2. Crate SQL String
                String sql = "Select * "
                        + "From Contest "
                        + "Full outer join BirdContest "
                        + "On Contest.IdContest = BirdContest.IdContest"
                        + "Where IdUser = ? ";
                        
                //3. Create Statement Object
                stm = con.prepareStatement(sql);
                stm.setString(1, userName);
                
                //4. Execute query
                rs = stm.executeQuery();
                //5. Process
                while(rs.next()){
                   //5.1 map
                   //5.1.1 get data from Result Set
                   String idContest = rs.getString("IdContest");
                   String nameOfContest = rs.getString("NameOfContest");
                   String date = rs.getString("Date");
                   String locationId = rs.getString("LocationId");
                   boolean status = rs.getBoolean("Status");
                   int factor = rs.getInt("Factor");
                   int minPoint = rs.getInt("MinPoint");
                   int maxPoint = rs.getInt("MaxPoint");
                   int participatingFee = rs.getInt("ParticipatingFee");
                   String idBird = rs.getString("IdBird");
                   int beforePoint = rs.getInt("BeforePoint");
                   int afterPoint = rs.getInt("AfterPoint");
                   
                   //5.1.2 add data to list
                   ContestDTO dto = new ContestDTO(idContest, nameOfContest, date, locationId, status, factor, minPoint, maxPoint, participatingFee, idBird, beforePoint, afterPoint);
                   //5.2 add data to list
                   if (this.contestList == null){
                    this.contestList = new ArrayList<>();   
                   }//end account List has not existed
                   this.contestList.add(dto);
                }//end map DB to DTO
            }//end connection í available
        } finally {
            if(rs != null){
                rs.close();
            }
            if(stm != null){
                stm.close();
            }
            if(con != null){
                con.close();
            }
        }
        
    }
}
