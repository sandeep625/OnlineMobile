using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class CartItem
{
    public CartItem() { }

    public CartItem(Product product)
    {
        this.Product = product;

    }

    public Product Product { get; set; }


    public string Display()
    {
        string displayString = string.Format("{0} {1} {2} {3}",
            Product.mobile_name,
            Product.brand,
            Product.features,
            Product.image,
            Product.color,
            Product.price
        );
        return displayString;
    }
}
