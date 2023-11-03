/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.birdcompetition.orderDetail;

import java.sql.Date;

/**
 *
 * @author MSI
 */
public class OrderDTO {
    private int IdOrder;
    private String IdMember;
    private int IdProduct;
    private int Price;
    private Date OrderDate;
    private boolean Status;

    public OrderDTO(int IdOrder, String IdMember, int IdProduct, int Price, Date OrderDate, boolean Status) {
        this.IdOrder = IdOrder;
        this.IdMember = IdMember;
        this.IdProduct = IdProduct;
        this.Price = Price;
        this.OrderDate = OrderDate;
        this.Status = Status;
    }

    public int getIdOrder() {
        return IdOrder;
    }

    public void setIdOrder(int IdOrder) {
        this.IdOrder = IdOrder;
    }

    public String getIdMember() {
        return IdMember;
    }

    public void setIdMember(String IdMember) {
        this.IdMember = IdMember;
    }

    public int getIdProduct() {
        return IdProduct;
    }

    public void setIdProduct(int IdProduct) {
        this.IdProduct = IdProduct;
    }

    public int getPrice() {
        return Price;
    }

    public void setPrice(int Price) {
        this.Price = Price;
    }

    public Date getOrderDate() {
        return OrderDate;
    }

    public void setOrderDate(Date OrderDate) {
        this.OrderDate = OrderDate;
    }

    public boolean isStatus() {
        return Status;
    }

    public void setStatus(boolean Status) {
        this.Status = Status;
    }

    @Override
    public String toString() {
        return "OrderDTO{" + "IdOrder=" + IdOrder + ", IdMember=" + IdMember + ", IdProduct=" + IdProduct + ", Price=" + Price + ", OrderDate=" + OrderDate + ", Status=" + Status + '}';
    }
    
    
}
