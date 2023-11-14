/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.birdcompetition.product;

/**
 *
 * @author 84366
 */
public class ProductDTO {
    public int idProduct;
    public String nameOfProduct;
    public int idContest;
    public boolean status;

    public ProductDTO() {
    }

    public ProductDTO(int idProduct, String nameOfProduct, int idContest, boolean status) {
        this.idProduct = idProduct;
        this.nameOfProduct = nameOfProduct;
        this.idContest = idContest;
        this.status = status;
    }

    public int getIdProduct() {
        return idProduct;
    }

    public void setIdProduct(int idProduct) {
        this.idProduct = idProduct;
    }

    public String getNameOfProduct() {
        return nameOfProduct;
    }

    public void setNameOfProduct(String nameOfProduct) {
        this.nameOfProduct = nameOfProduct;
    }

    public int getIdContest() {
        return idContest;
    }

    public void setIdContest(int idContest) {
        this.idContest = idContest;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "ProductDTO{" + "idProduct=" + idProduct + ", nameOfProduct=" + nameOfProduct + ", idContest=" + idContest + ", status=" + status + '}';
    }
    
    
}
