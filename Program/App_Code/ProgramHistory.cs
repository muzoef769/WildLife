using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Animal
/// </summary>
public class ProgramHistory
{
    //Attributes
    private int programHistoryID, newProgramID;
    private Boolean status;
    private DateTime creationDate, completionDate;

    private DateTime lastUpdated;
    private string lastUpdatedBy;

    //ProgramHistory constructor
    public ProgramHistory(int programHistoryID, int newProgramID, Boolean status, DateTime creationDate, DateTime completionDate, DateTime lastUpdated, string lastUpdatedBy)
    {
        setProgramHistoryID(programHistoryID);
        setNewProgramID(newProgramID);
        setStatus(status);
        setCreationDate(creationDate);
        setCompletionDate(completionDate);
        setLastUpdated(lastUpdated);
        setLastUpdatedBy(lastUpdatedBy);
    }

    //Getters
    public int getProgramHistoryID()
    {
        return this.programHistoryID;
    }
    public int getNewProgramID()
    {
        return this.newProgramID;
    }
    public Boolean getStatus()
    {
        return this.status;
    }
    public DateTime getCreationDate()
    {
        return this.creationDate;
    }
    public DateTime getCompletionDate()
    {
        return this.completionDate;
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
    public void setProgramHistoryID(int x)
    {
        this.programHistoryID = x;
    }
    public void setNewProgramID(int x)
    {
        this.newProgramID = x;
    }
    public void setStatus(Boolean x)
    {
        this.status = x;
    }
    public void setCreationDate(DateTime x)
    {
        this.creationDate = x;
    }
    public void setCompletionDate(DateTime x)
    {
        this.completionDate = x;
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