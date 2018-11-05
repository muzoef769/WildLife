using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for NewProgram
/// </summary>
public class NewPrograms
{
    private int newProgramID, programID, numKids, numAdults, totalPeople, totalMileage;
    private DateTime dateCreated, dateCompleted;
    private string ageLevel, status, miscNotes;
    private DateTime lastUpdated;
    private string lastUpdatedBy;
    public NewPrograms(int kids, int adults, int people, string ageLevel, int mileage, string status, string notes, DateTime dateCreated, DateTime dateCompleted, int programID, DateTime lastUpdated, string lastUpdatedBy)
    {

        setNumKids(kids);
        setNumAdults(adults);
        setTotalPeople(people);
        setAgeLevel(ageLevel);
        setMileage(mileage);
        setMiscNotes(notes);
        setDateCreated(dateCreated);
        setDateCompleted(dateCompleted);
        setProgramStatus(status);
        setProgramID(programID);
        setLastUpdated(lastUpdated);
        setLastUpdatedBy(lastUpdatedBy);
    }
    //Getters
    public int getNewProgramID()
    {
        return this.newProgramID;
    }
    public int getProgramID()
    {
        return this.programID;
    }
    public int getNumKids()
    {
        return this.numKids;
    }
    public int getNumAdults()
    {
        return this.numAdults;
    }
    public int getTotalPeople()
    {
        return this.totalPeople;
    }
    public string getAgeLevel()
    {
        return this.ageLevel;
    }
    public int getTotalMileage()
    {
        return this.totalMileage;
    }
    public string getMiscNotes()
    {
        return this.miscNotes;
    }
    //public int getAssignEmployeeID()
    //{
    //    return this.assignEmployeeID;
    //}
    //public int getAssignAnimalID()
    //{
    //    return this.assignAnimalID;
    //}
    //public int getInvoiceID()
    //{
    //    return this.invoiceID;
    //}
    public DateTime getDateCreated()
    {
        return this.dateCreated;
    }
    public DateTime getDateCompleted()
    {
        return this.dateCompleted;
    }
    public string getProgramStatus()
    {
        return this.status;
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
    public void setNewProgramID(int x)
    {
        this.newProgramID = x;
    }
    public void setProgramID(int x)
    {
        this.programID = x;
    }
    public void setNumKids(int x)
    {
        this.numKids = x;
    }
    public void setNumAdults(int x)
    {
        this.numAdults = x;
    }
    public void setAgeLevel(string x)
    {
        this.ageLevel = x;
    }
    public void setTotalPeople(int x)
    {
        this.totalPeople = x;
    }
    public void setMileage(int x)
    {
        this.totalMileage = x;
    }
    public void setMiscNotes(string x)
    {
        this.miscNotes = x;
    }
    public void setProgramStatus(string x)
    {
        this.status = x;
    }
    //public void setAssignEmployeeID(int x)
    //{
    //    this.assignEmployeeID = x;
    //}
    //public void setAssignAnimalID(int x)
    //{
    //    this.assignAnimalID = x;
    //}
    //public void setInvoiceID(int x)
    //{
    //    this.invoiceID = x;
    //}
    public void setDateCreated(DateTime x)
    {
        this.dateCreated = x;
    }
    public void setDateCompleted(DateTime x)
    {
        this.dateCompleted = x;
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