/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.birdcompetition.news;

import java.sql.Date;

/**
 *
 * @author MSI
 */
public class NewsDTO {
    private int IdNews;
    private String NameOfNews;
    private Date date;
    private String Description;
    private String LinkOfNews;
    private String Photo;
    private String IdUser;

    public NewsDTO() {
    }

    public NewsDTO(int IdNews, String NameOfNews, Date date, String Description, String LinkOfNews, String Photo, String IdUser) {
        this.IdNews = IdNews;
        this.NameOfNews = NameOfNews;
        this.date = date;
        this.Description = Description;
        this.LinkOfNews = LinkOfNews;
        this.Photo = Photo;
        this.IdUser = IdUser;
    }

    

    public NewsDTO(String NameOfNews, String photo, String Description, String LinkOfNews) {
        this.NameOfNews = NameOfNews;
        this.Photo = photo;
        this.Description = Description;
        this.LinkOfNews = LinkOfNews;
    }

    public String getNameOfNews() {
        return NameOfNews;
    }

    public void setNameOfNews(String NameOfNews) {
        this.NameOfNews = NameOfNews;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String Description) {
        this.Description = Description;
    }

    public String getLinkOfNews() {
        return LinkOfNews;
    }

    public void setLinkOfNews(String LinkOfNews) {
        this.LinkOfNews = LinkOfNews;
    }

    public String getPhoto() {
        return Photo;
    }

    public void setPhoto(String Photo) {
        this.Photo = Photo;
    }

    public String getIdUser() {
        return IdUser;
    }

    public void setIdUser(String IdUser) {
        this.IdUser = IdUser;
    }

    public int getIdNews() {
        return IdNews;
    }

    public void setIdNews(int IdNews) {
        this.IdNews = IdNews;
    }

    @Override
    public String toString() {
        return "NewsDTO{" + "IdNews=" + IdNews + ", NameOfNews=" + NameOfNews + ", date=" + date + ", Description=" + Description + ", LinkOfNews=" + LinkOfNews + ", Photo=" + Photo + ", IdUser=" + IdUser + '}';
    }
    

  
    
    
    
}
