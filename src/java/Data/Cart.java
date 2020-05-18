/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Data;

/**
 *
 * @author TOSHIBA
 */
public class Cart {

   private String IDproduct;
    private String Picture;
    private String Title;
    private String Price;
    private int Quantity;

    public Cart(String IDproduct,String Picture, String Title, String Price, int Quantity) {
        this.IDproduct = IDproduct;
        this.Picture = Picture;
        this.Title = Title;
        this.Price = Price;
        this.Quantity = Quantity;
    }

    public void setIDproduct(String IDproduct) {
        this.IDproduct = IDproduct;
    }

    public String getIDproduct() {
        return IDproduct;
    }


    public String getPicture() {
        return Picture;
    }

    public String getTitle() {
        return Title;
    }

    public String getPrice() {
        return Price;
    }

    public int getQuantity() {
        return Quantity;
    }

    public void setPicture(String Picture) {
        this.Picture = Picture;
    }

    public void setTitle(String Title) {
        this.Title = Title;
    }

    public void setPrice(String Price) {
        this.Price = Price;
    }

    public void setQuantity(int Quantity) {
        this.Quantity = Quantity;
    }

}
