using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Programs
/// </summary>
public class Programs
{
    private int numKids;
    private int numAdults;
    private int totalPeople;
    private int totalMileage;
    private DateTime dateCreated;
    private DateTime dateCompleted;
    private string ageLevel;
    private string status;
    private string miscNotes;
    private DateTime LastUpdated;
    private string LastUpdatedBy;

    public Programs(int numKids,
        int numAdults, int totalPeople, int totalMileage,DateTime dateCreated,
        DateTime dateCompleted, string ageLevel, string status, string miscNotes,
        DateTime lastUpdated, string lastUpdatedBy)
    {
        this.numKids = numKids;
        this.numAdults = numAdults;
        this.totalPeople = totalPeople;
        this.totalMileage = totalMileage;
        this.dateCreated = dateCreated;
        this.dateCompleted = dateCompleted;
        this.ageLevel = ageLevel;
        this.status = status;
        this.miscNotes = miscNotes;
        LastUpdated = lastUpdated;
        LastUpdatedBy = lastUpdatedBy;
    }

    public int NumKids { get => numKids; set => numKids = value; }
    public int NumAdults { get => numAdults; set => numAdults = value; }
    public int TotalPeople { get => totalPeople; set => totalPeople = value; }
    public int TotalMileage { get => totalMileage; set => totalMileage = value; }
    public DateTime DateCreated { get => dateCreated; set => dateCreated = value; }
    public DateTime DateCompleted { get => dateCompleted; set => dateCompleted = value; }
    public string AgeLevel { get => ageLevel; set => ageLevel = value; }
    public string Status { get => status; set => status = value; }
    public string MiscNotes { get => miscNotes; set => miscNotes = value; }
    public DateTime LastUpdated1 { get => LastUpdated; set => LastUpdated = value; }
    public string LastUpdatedBy1 { get => LastUpdatedBy; set => LastUpdatedBy = value; }
}