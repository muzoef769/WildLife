using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Contact
/// </summary>
/// 
//changed name from teacher to contact
public class Contact
{
    private int ID;
    private string firstName, lastName;
    private string email;
    private int primaryPhone; //added phones
    private int secondaryPhone; //added phones

    private DateTime lastUpdated;
    private string lastUpdatedBy;
    //Teacher constructor - OG constructor Will made
    //public Contact(int teacherID, string teacherName, string teacherEmail, DateTime lastUpdated, string lastUpdatedBy)
    //{
    //    setTeacherID(teacherID);
    //    setTeacherName(teacherName);
    //    setTeacherEmail(teacherEmail);
    //    setLastUpdated(lastUpdated);
    //    setLastUpdatedBy(lastUpdatedBy);
    //}

    //Constructor w/BOTH phone numbers
    public Contact(int contactID, string firstName, string lastName, string contactEmail, int primaryPhone, int secondaryPhone, DateTime lastUpdated, string lastUpdatedBy)
    {
        setContactID(ID);
        setFirstName(firstName);
        setLastName(lastName);
        setContactEmail(contactEmail);
        setPrimaryPhone(primaryPhone);
        setSecondaryPhone(secondaryPhone);
        setLastUpdated(lastUpdated);
        setLastUpdatedBy(lastUpdatedBy);
    }
    //Constructor w/ONE phone number
    public Contact(int contactID, string firstName, string lastName, string contactEmail, int primaryPhone, DateTime lastUpdated, string lastUpdatedBy)
    {
        setContactID(ID);
        setFirstName(firstName);
        setLastName(lastName);
        setContactEmail(contactEmail);
        setPrimaryPhone(primaryPhone);
        setLastUpdated(lastUpdated);
        setLastUpdatedBy(lastUpdatedBy);
    }

    //Getters
    public int getContactID()
    {
        return this.ID;
    }
    public string getFirstName()
    {
        return this.firstName;
    }
    public string getLastName()
    {
        return this.lastName;
    }
    public string getEmailName()
    {
        return this.email;
    }
    public int getPrimaryNumber()
    {
        return this.primaryPhone;
    }
    public int getSecondaryNumber()
    {
        return this.secondaryPhone;
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
    public void setContactID(int x)
    {
        this.ID = x;
    }
    public void setFirstName(string x)
    {
        this.firstName = x;
    }
    public void setLastName(string x)
    {
        this.lastName = x;
    }
    public void setContactEmail(string x)
    {
        this.email = x;
    }
    public void setPrimaryPhone(int x)
    {
        this.primaryPhone = x;
    }
    public void setSecondaryPhone(int x)
    {
        this.secondaryPhone = x;
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