﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Animal
/// </summary>
public class Animals
{
    //Attributes
    //private int ID; //changed ID  to animalID
    
    private string Species;
    private string ScientificName;
    private string AnimalName;
    private string AnimalType; //This value will either be 'B' for bird, 'M' for Mammal, or 'R' for Reptile ------- changed to string
    //private DateTime dateAdded;   removed dateAdded
    //private int age               removed age
    private char Status;
    //added species, scientificname to match DB
    private DateTime LastUpdated;
    private string LastUpdatedBy;

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
    //public Animals(int ID, string name, string species, string scientificName, string type,  DateTime lastUpdated, string lastUpdatedBy)
    //{
    //    setAnimalID(ID);
    //    setAnimalName(name);
    //    setSpecies(species);
    //    setScientificName(scientificName);
    //    setAnimalType(type);
    //    setLastUpdated(lastUpdated);
    //    setLastUpdatedBy(lastUpdatedBy);
    //}

    public Animals(string species, string scientificName, string AnimalName, string AnimalType, char Status, DateTime lastUpdated, string lastUpdatedBy)
    {
        
        
        setSpecies(species);
        setScientificName(scientificName);
        setAnimalName(AnimalName);
        setAnimalType(AnimalType);
        setStatus(Status);
        setLastUpdated(lastUpdated);
        setLastUpdatedBy(lastUpdatedBy);
    }

    //Getters
    //public int getAnimalID()
    //{
    //    return this.ID;
    //}
    public string getAnimalName()
    {
        return this.AnimalName;
    }

    public string getSpecies()
    {
        return this.Species;
    }

    public string getScientificName()
    {
        return this.ScientificName;
    }

    public string getAnimalType()
    {
        return this.AnimalType;
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
        return this.LastUpdated;
    }
    public string getLastUpdatedBy()
    {
        return this.LastUpdatedBy;
    }

    //Setters
    //public void setAnimalID(int x)
    //{
    //    this.ID = x;
    //}
    public void setAnimalType(string x)
    {
        this.AnimalType = x;
    }

    public void setSpecies(string x)
    {
        this.Species = x;
    }

    public void setScientificName(string x)
    {
        this.ScientificName = x;
    }

    //public void setAnimalAge(int x)
    //{
    //    this.age = x;
    //}

    public void setAnimalName(string x)
    {
        this.AnimalName = x;
    }

    //public void setAnimalDateAdded(DateTime x)
    //{
    //    this.dateAdded = x;
    //}

    public void setLastUpdated(DateTime x)
    {
        this.LastUpdated = x;
    }
    public void setLastUpdatedBy(string x)
    {
        this.LastUpdatedBy = x;
    }
    public char getStatus()
    {
        return this.Status;
    }
    public void setStatus(char status)
    {
        this.Status = status;
    }



}