using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Program
/// </summary>
/// 

    //Updated constructor to match create statements - kelly 10/24
public class Program
{
    //Attributes
    private int ID;
    private string name;
    private string type; //This value will either be 'L' to indicate LIVE or 'O' to indicate ONLINE ------ changed to string
    private double cost; //added program cost
    private int capacity;

    private DateTime lastUpdated;
    private string lastUpdatedBy;

    //Program constructor - OG constructor Will made
    //public Program(int programID, string programName, int capacity, char programType, DateTime lastUpdated, string lastUpdatedBy)
    //{
    //    setProgramID(programID);
    //    setProgramName(programName);
    //    setCapacity(capacity);
    //    setProgramType(programType);
    //    setLastUpdated(lastUpdated);
    //    setLastUpdatedBy(lastUpdatedBy);
    //}

    public Program(int programID, string programName, string programType, double programCost, int capacity, DateTime lastUpdated, string lastUpdatedBy)
    {
        setProgramID(programID);
        setProgramName(programName);
        setProgramType(programType);
        setProgramCost(programCost);
        setCapacity(capacity);
        setLastUpdated(lastUpdated);
        setLastUpdatedBy(lastUpdatedBy);
    }

    //Getters
    public int getProgramID()
    {
        return this.ID;
    }
    public string getProgramName()
    {
        return this.name;
    }
    public int getCapacity()
    {
        return this.capacity;
    }
    public string getProgramType()
    {
        return this.type;
    }
    public double getProgramCost()
    {
        return this.cost;
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
    public void setProgramID(int x)
    {
        this.ID = x;
    }
    public void setProgramName(string x)
    {
        this.name = x;
    }
    public void setProgramType(string x)
    {
        this.type = x;
    }
    public void setCapacity(int x)
    {
        this.capacity = x;
    }
    public void setProgramCost(double x)
    {
        this.cost = x;
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