using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Teacher
/// </summary>
public class Teacher
{
    private int ID;
    private string name;
    private string email;

    private DateTime lastUpdated;
    private string lastUpdatedBy;
    //Teacher constructor
    public Teacher(int teacherID, string teacherName, string teacherEmail, DateTime lastUpdated, string lastUpdatedBy)
    {
        setTeacherID(teacherID);
        setTeacherName(teacherName);
        setTeacherEmail(teacherEmail);
        setLastUpdated(lastUpdated);
        setLastUpdatedBy(lastUpdatedBy);
    }

    //Getters
    public int getTeacherID()
    {
        return this.ID;
    }
    public string getTeacherName()
    {
        return this.name;
    }
    public string getEmailName()
    {
        return this.email;
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
    public void setTeacherID(int x)
    {
        this.ID = x;
    }
    public void setTeacherName(string x)
    {
        this.name = x;
    }
    public void setTeacherEmail(string x)
    {
        this.email = x;
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