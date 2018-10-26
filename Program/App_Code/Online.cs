using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Online
{
    //Attributes
    private int programID;
    private string onlineType;

    public Online(int programID, string onlineType)
    {
        setProgramID(programID);
        setOnlineType(onlineType);
    }

    //Setters
    public void setProgramID(int programID)
    {
        this.programID = programID;
    }
    public void setOnlineType(string onlineType)
    {
        this.onlineType = onlineType;
    }

    //Getters

    public int getProgramID()
    {
        return this.programID;
    }

    public string getOnlineType()
    {
        return this.onlineType;
    }

}
