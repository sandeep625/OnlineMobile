using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace OnlineMobile
{
    public partial class MobileDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void addtocart(object sender, EventArgs e)
        {
            if (IsValid)
            {
                Button btn = (Button)sender;
                switch (btn.CommandName)
                {
                    case "addCart":
                        Product selectedProduct = GetSelectedProduct();
                        CartItemList cart = CartItemList.GetCart();
                        CartItem cartItem = cart[selectedProduct.Id];

                        if (cartItem == null)
                        {
                            cart.AddItem(selectedProduct);
                        }
                        Response.Redirect("CartLists.aspx");
                        break;
                }

            }
        }

        private Product GetSelectedProduct()
        {
            // get row from SqlDataSource based on value in dropdownlist
            DataView productsTable = (DataView)
                SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            DataRowView row = productsTable[0];

            // create a new product object and load with data from row
            Product p = new Product();
            p.Id = row["Id"].ToString();
            p.mobile_name = row["mobile_name"].ToString();
            p.brand = row["brand"].ToString();
            p.features = row["features"].ToString();
            p.price = (decimal)row["price"];
           
            return p;
        }
    }
}