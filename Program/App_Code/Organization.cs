using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Organization
/// </summary>
public class Organization
{
    //Attributes
    private int orgID;
    private int addressID;
    private int contactID;
    private string orgName;

    private DateTime lastUpdated;
    private string lastUpdatedBy;

    public Organization(int addressID, int contactID, string orgName, DateTime lastUpdated, string lastUpdatedBy)
    {
        this.addressID = addressID;
        this.contactID = contactID;
        this.orgName = orgName;
        this.lastUpdated = lastUpdated;
        this.lastUpdatedBy = lastUpdatedBy;
    }

    public int AddressID { get => addressID; set => addressID = value; }
    public int ContactID { get => contactID; set => contactID = value; }
    public string OrgName { get => orgName; set => orgName = value; }
    public DateTime LastUpdated { get => lastUpdated; set => lastUpdated = value; }
    public string LastUpdatedBy { get => lastUpdatedBy; set => lastUpdatedBy = value; }
}