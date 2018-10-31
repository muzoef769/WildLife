using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Payment
/// </summary>
public class Address
{
    //Attributes
    private int addressID;
    private string streetName;
    private string city;
    private string county;
    private string country;
    private string zipCode;
    private string addressType;
    private DateTime lastUpdated;
    private string lastUpdatedBy;

    public Address(int addressID, string streetName, string city, string county, string country, string zipCode, string addressType, DateTime lastUpdated, string lastUpdatedBy)
    {
        this.addressID = addressID;
        this.streetName = streetName;
        this.city = city;
        this.county = county;
        this.country = country;
        this.zipCode = zipCode;
        this.addressType = addressType;
        this.lastUpdated = lastUpdated;
        this.lastUpdatedBy = lastUpdatedBy;
    }

    public int AddressID { get => addressID; set => addressID = value; }
    public string StreetName { get => streetName; set => streetName = value; }
    public string City { get => city; set => city = value; }
    public string County { get => county; set => county = value; }
    public string Country { get => country; set => country = value; }
    public string ZipCode { get => zipCode; set => zipCode = value; }
    public string AddressType { get => addressType; set => addressType = value; }
    public DateTime LastUpdated { get => lastUpdated; set => lastUpdated = value; }
    public string LastUpdatedBy { get => lastUpdatedBy; set => lastUpdatedBy = value; }
}