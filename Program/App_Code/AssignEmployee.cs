using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for AssignEmployee
/// </summary>
public class AssignEmployee
{
    private int assignEmployeeID;
    private int userID;
    private int newProgramID;

    private DateTime lastUpdated;
    private string lastUpdatedBy;
    public AssignEmployee(int assignEmployeeID, int userID, int newProgram, DateTime lastUpdated, string lastUpdatedBy)
    {
        setAssignEmployeeID(assignEmployeeID);
        setUserID(userID);
        setNewProgramID(newProgramID);
        setLastUpdated(lastUpdated);
        setLastUpdatedBy(lastUpdatedBy);
    }
    //Getters
    public int getAssignEmployeeID()
    {
        return this.assignEmployeeID;
    }
    public int getUserID()
    {
        return this.userID;
    }
    public int getNewProgramID()
    {
        return this.newProgramID;
    }
    public DateTime getLastUpdated()
    {
        return this.lastUpdated;
    }
    public string getLastUpdatedBy()
    {
        return this.lastUpdatedBy;
    }

    //Setters
    public void setAssignEmployeeID(int x)
    {
        this.assignEmployeeID = x;
    }
    public void setUserID(int x)
    {
        this.userID = x;
    }
    public void setNewProgramID(int x)
    {
        this.newProgramID = x;
    }
    public void setLastUpdated(DateTime x)
    {
        this.lastUpdated = x;
    }
    public void setLastUpdatedBy(string x)
    {
        this.lastUpdatedBy = x;
    }
}