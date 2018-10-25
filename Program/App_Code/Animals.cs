using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Animals
/// </summary>
public class Animals
{
    private int AnimalID;
    private string Species;
    private string ScientificName;
    private string AnimalName;
    private string AnimalType;
    private DateTime LastUpdated;
    private string LastUpdatedBy;

    public Animals(string species, string scientificName,
        string animalName, string animalType, DateTime lastUpdated, string lastUpdatedBy)
    {
        Species = species;
        ScientificName = scientificName;
        AnimalName = animalName;
        AnimalType = animalType;
        LastUpdated = lastUpdated;
        LastUpdatedBy = lastUpdatedBy;
    }

    public int AnimalID1 { get => AnimalID; set => AnimalID = value; }
    public string Species1 { get => Species; set => Species = value; }
    public string ScientificName1 { get => ScientificName; set => ScientificName = value; }
    public string AnimalName1 { get => AnimalName; set => AnimalName = value; }
    public string AnimalType1 { get => AnimalType; set => AnimalType = value; }
    public DateTime LastUpdated1 { get => LastUpdated; set => LastUpdated = value; }
    public string LastUpdatedBy1 { get => LastUpdatedBy; set => LastUpdatedBy = value; }
}