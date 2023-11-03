/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.birdcompetition.payment;

import java.io.Serializable;

/**
 *
 * @author admin
 */
public class PaymentDTO implements Serializable{
    private int idOrder;
    private String idMember;
    private int idProduct;
    private int price;
    private String orderDate;
    private String NameOfProducts;

    public PaymentDTO() {
    }

    public PaymentDTO(int idOrder, String idMember, int idProduct, int price, String orderDate, String NameOfProducts) {
        this.idOrder = idOrder;
        this.idMember = idMember;
        this.idProduct = idProduct;
        this.price = price;
        this.orderDate = orderDate;
        this.NameOfProducts = NameOfProducts;
    }

    
    
    public PaymentDTO(int price, String orderDate, String NameOfProducts) {
        this.price = price;
        this.orderDate = orderDate;
        this.NameOfProducts = NameOfProducts;
    }

    public PaymentDTO(int price) {
        this.price = price;
    }
    

    public int getIdOrder() {
        return idOrder;
    }

    public void setIdOrder(int idOrder) {
        this.idOrder = idOrder;
    }

    public String getIdMember() {
        return idMember;
    }

    public void setIdMember(String idMember) {
        this.idMember = idMember;
    }

    public int getIdProduct() {
        return idProduct;
    }

    public void setIdProduct(int idProduct) {
        this.idProduct = idProduct;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(String orderDate) {
        this.orderDate = orderDate;
    }

    public String getNameOfProducts() {
        return NameOfProducts;
    }

    public void setNameOfProducts(String NameOfProducts) {
        this.NameOfProducts = NameOfProducts;
    }

    @Override
    public String toString() {
        return "PaymentDTO{" + "idOrder=" + idOrder + ", idMember=" + idMember + ", idProduct=" + idProduct + ", price=" + price + ", orderDate=" + orderDate + ", NameOfProducts=" + NameOfProducts + '}';
    }
    

   
}
