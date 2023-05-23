/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.axocode.dao.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import org.axocode.dao.InterUsers;


/**
 *
 * @author gerdoc
 */
public class InterUsersService extends Conexion<InterUsers>
{
    public List<InterUsers> getInterUsersList() 
    {
        List<InterUsers> usersList = null;
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        InterUsers users = null;

        try 
        {
            connection = getConnection();
            if (connection == null) 
            {
                return null;
            }
            statement = connection.createStatement();
            if (statement == null) {
                return null;
            }
            resultSet = statement.executeQuery("SELECT * FROM InterUsers");
            if (resultSet == null) 
            {
                return null;
            }
            usersList = new ArrayList<>();
            while (resultSet.next()) 
            {
                users = new InterUsers();
                users.setIUserNum(resultSet.getInt(1));
                users.setIUser(resultSet.getString(2));
                users.setIAge(resultSet.getString(3));
                users.setIEmail(resultSet.getString(4));
                users.setIPassword(resultSet.getString(5));
                users.setIImgNum(resultSet.getString(6));
                usersList.add(users);
            }
            resultSet.close();
            closeConnection(connection);
            return usersList;
        } 
        catch (SQLException ex) 
        {
            ex.printStackTrace();
        }
        return null;
    }
    
    public boolean addInterUsers( InterUsers users )
    {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        String sql = "INSERT INTO InterUsers(IUserNum,IUser,IAge,IEmail,IPassword,IImgNum) VALUES(?,?,?,?,?,?)";
        int row = 0;
        try 
        {
            connection = getConnection( );
            if( connection == null )
            {
                return false;
            }
            preparedStatement = connection.prepareStatement(sql);
            if( preparedStatement == null )
            {
                return false;
            }
            preparedStatement.setInt(1, users.getIUserNum());
            preparedStatement.setString(2, users.getIUser());
            preparedStatement.setString(3, users.getIAge());
            preparedStatement.setString(4, users.getIEmail());
            preparedStatement.setString(5, users.getIPassword());
            preparedStatement.setString(6, users.getIImgNum());
            row = preparedStatement.executeUpdate();
            closeConnection(connection);
            return row == 1;
        } 
        catch (SQLException ex) 
        {
            ex.printStackTrace();
        }
        return false;
    }
    
    public boolean updateUsers( InterUsers users )
    {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        String sql = "update InterUsers SET getIUser=? WHERE IUserNum = ?";
        int row = 0;
        try 
        {
            connection = getConnection( );
            if( connection == null )
            {
                return false;
            }
            preparedStatement = connection.prepareStatement(sql);
            if( preparedStatement == null )
            {
                return false;
            }
            preparedStatement.setString(1, users.getIUser());
            preparedStatement.setInt(2, users.getIUserNum());
            row = preparedStatement.executeUpdate();
            closeConnection(connection);
            return row == 1;
        } 
        catch (SQLException ex) 
        {
            ex.printStackTrace();
        }
        return false;
    }
    
    public boolean deleteUsers( InterUsers users )
    {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        String sql = "DELETE FROM InterUsers WHERE IUserNum = ?";
        int row = 0;
        try 
        {
            connection = getConnection( );
            if( connection == null )
            {
                return false;
            }
            preparedStatement = connection.prepareStatement(sql);
            if( preparedStatement == null )
            {
                return false;
            }
            preparedStatement.setInt(1, users.getIUserNum());
            row = preparedStatement.executeUpdate();
            closeConnection(connection);
            return row == 1;
        } 
        catch (SQLException ex) 
        {
            ex.printStackTrace();
        }
        return false;
    }
    
    public InterUsers getUserByInterUsers( int IUserNum) 
    {
        InterUsers aux = null;
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        try 
        {
            connection = getConnection();
            if (connection == null) 
            {
                return null;
            }
            preparedStatement = connection.prepareStatement("SELECT * FROM InterUsers WHERE IUserNum = ?" );
            if (preparedStatement == null) 
            {
                return null;
            }
            preparedStatement.setInt(1, IUserNum );
            resultSet = preparedStatement.executeQuery();
            if (resultSet == null) 
            {
                return null;
            }
            aux = new InterUsers ( );
            while (resultSet.next()) 
            {
                
                aux.setIUserNum(resultSet.getInt(1));
                aux.setIUser(resultSet.getString(2));
                aux.setIAge(resultSet.getString(3));
                aux.setIEmail(resultSet.getString(4));
                aux.setIPassword(resultSet.getString(5));
                aux.setIImgNum(resultSet.getString(6));
                
            }
            resultSet.close();
            closeConnection(connection);
            return aux;
        } 
        catch (SQLException ex) 
        {
            ex.printStackTrace();
        }
        return null;
    }
    
    
}
