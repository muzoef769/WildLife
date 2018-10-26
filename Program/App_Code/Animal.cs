using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Animal
/// </summary>
public class Animal
{
    //Attributes
    private int ID; //changed ID  to animalID
    private string name;
    private string species;
    private string scientificName;
    private string type; //This value will either be 'B' for bird, 'M' for Mammal, or 'R' for Reptile ------- changed to string
    //private DateTime dateAdded;   removed dateAdded
    //private int age               removed age

    //added species, scientificname to match DB
    private DateTime lastUpdated;
    private string lastUpdatedBy;

    //Animal constructor -OG constructor Will made
    //public Animal(int animalID, string name, string type, int age, DateTime dateAdded, DateTime lastUpdated, string lastUpdatedBy)
    //{
    //    setAnimalID(animalID);
    //    setAnimalType(type);
    //    setAnimalName(name);
    //    setAnimalDateAdded(dateAdded);
    //    setLastUpdated(lastUpdated);
    //    setLastUpdatedBy(lastUpdatedBy);
    //}


    //Animal constructor - constructor Kelly made
    public Animal(int ID, string name, string species, string scientificName, string type,  DateTime lastUpdated, string lastUpdatedBy)
    {
        setAnimalID(ID);
        setAnimalName(name);
        setSpecies(species);
        setScientificName(scientificName);
        setAnimalType(type);
        setLastUpdated(lastUpdated);
        setLastUpdatedBy(lastUpdatedBy);
    }


    //Getters
    public int getAnimalID()
    {
        return this.ID;
    }
    public string getAnimalName()
    {
        return this.name;
    }

    public string getSpecies()
    {
        return this.species;
    }

    public string getScientificName()
    {
        return this.scientificName;
    }

    public string getAnimalType()
    {
        return this.type;
    }

    //age is no longer needed
    //public int getAnimalAge()
    //{
    //    return this.age;
    //}

    //public DateTime getDateAdded()
    //{
    //    return this.dateAdded;
    //}

    public DateTime getLastUpdated()
    {
        return this.lastUpdated;
    }
    public string getLastUpdatedBy()
    {
        return this.lastUpdatedBy;
    }

    //Setters
    public void setAnimalID(int x)
    {
        this.ID = x;
    }
    public void setAnimalType(string x)
    {
        this.type = x;
    }

    public void setSpecies(string x)
    {
        this.species = x;
    }

    public void setScientificName(string x)
    {
        this.scientificName = x;
    }

    //public void setAnimalAge(int x)
    //{
    //    this.age = x;
    //}

    public void setAnimalName(string x)
    {
        this.name = x;
    }

    //public void setAnimalDateAdded(DateTime x)
    //{
    //    this.dateAdded = x;
    //}

    public void setLastUpdated(DateTime x)
    {
        this.lastUpdated = x;
    }
    public void setLastUpdatedBy(string x)
    {
        this.lastUpdatedBy = x;
    }
}