/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Nathie
 */
public class customerConfirmDB {
    
    public void update(String tour_ID,int book) throws Exception
    {
    
     String sql="UPDATE tourforbooking SET bookingConformed=1 WHERE tour_ID="+tour_ID;
     String sql1="DELETE FROM newentryforbooking WHERE tour_ID="+tour_ID;
     String sql2="UPDATE hotel,tourentry,tourforbooking,towns_of_route SET bookings="+ book +" WHERE tourentry.tour_ID="+tour_ID+ "and hotel.town_ID=tourforbooking.overnight_stop and tourentry.route_ID=towns_of_route.towns_of_route_ID and towns_of_route.towns_of_route_ID=tourforbooking.overnight_stop";
    
     
            Connection con = DBBasic.getCon();
            PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
            PreparedStatement ps1 = (PreparedStatement) con.prepareStatement(sql1);
            PreparedStatement ps2 = (PreparedStatement) con.prepareStatement(sql2);
           
            ps1.executeUpdate();
            ps.executeUpdate();
            ps2.executeUpdate();
            
            
	 
     
    }
    
    
}
