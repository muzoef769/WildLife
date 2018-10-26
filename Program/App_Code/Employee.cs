using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Employee
/// </summary>
public class Employee
{
    //Attributes
    private int employeeID;
    private string firstName;
    private string middleName;
    private string lastName;

    private DateTime lastUpdated;
    private string lastUpdatedBy;

    //Employee constructor 
    public Employee(int empID, string fName, string mName, string lName, DateTime lastUpdated, string lastUpdatedBy)
    {
        setEmployeeID(empID);
        setFirstName(fName);
        setMiddleName(mName);
        setLastName(lName);
        setLastUpdated(lastUpdated);
        setLastUpdatedBy(lastUpdatedBy);
    }

    //Getters
    public int getEmployeeID()
    {
        return this.employeeID;
    }
    public string getFirstName()
    {
        return this.firstName;
    }
    public string getMiddleName()
    {
        return this.middleName;
    }
    public string getLastName()
    {
        return this.lastName;
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
    public void setEmployeeID(int x)
    {
        this.employeeID = x;
    }
    public void setFirstName(string x)
    {
        this.firstName = x;
    }
    public void setMiddleName(string x)
    {
        this.middleName = x;
    }
    public void setLastName(string x)
    {
        this.lastName = x;
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