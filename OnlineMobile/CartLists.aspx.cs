using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineMobile
{
    public partial class CartLists : System.Web.UI.Page
    {
        private CartItemList cart;
        protected void Page_Load(object sender, EventArgs e)
        {
            cart = CartItemList.GetCart(); // get on all postbacks

            if (!IsPostBack) // do on initial load
            {

                this.DisplayCart();
            };
        }
        private void DisplayCart()
        {
            lstCart.Items.Clear();
            CartItem item;

            for (int i = 0; i < cart.Count; i++)
            {
                item = cart[i];
                lstCart.Items.Add(item.Display());
               
            }
        }
        protected void RemoveMobile(object sender, EventArgs e)
        {
            if (cart.Count > 0)
            {
                if (lstCart.SelectedIndex > -1)
                {
                    cart.RemoveAt(lstCart.SelectedIndex);
                    this.DisplayCart();
                }
               

            }
           
        }

        protected void EmptyList(object sender, EventArgs e)
        {
            if (cart.Count > 0)
            {
                cart.Clear();
                lstCart.Items.Clear();

               

            }

        }
    }
}