using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Kassakvitto
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CalcDiscount_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                double theSum;
                if (double.TryParse(InputField.Text, out theSum)) // lika bra att va extra säker med tryparse
                {
                    Receipt rec = new Receipt(theSum);
                    rec.Calculate(theSum);
                    DrawReceipt(rec);
                }
                else
                {
                    ErrorText.Text = "Error! Något blev fel vid parsningen";
                }
            }
        }

        protected void DrawReceipt(Receipt rec)
        {
            ReceiptH1.Text = "Ica Supermarket<br />";
            ReceiptHeader.Text = "Din lokala mataffär!<br /><br />";
            ReceiptHeader.Text += "Tel: 0772-90-00-00<br />";
            ReceiptHeader.Text += "Öppettider 8-17<br />";
            ReceiptHeader.Text += "MÅNDAGAR - FREDAGAR<br />";
            ReceiptBody1.Text = "Totalt:"; 
            ReceiptBody2.Text = String.Format("{0:c}<br />", rec.SubTotal);
            ReceiptBody3.Text = "Rabattsats:";
            ReceiptBody4.Text = rec.DiscountRate + "%<br />"; 
            ReceiptBody5.Text = "Rabatt:";
            ReceiptBody6.Text = String.Format("{0:c}<br />", rec.MoneyOff);
            ReceiptBody7.Text = "Att betala:"; 
            ReceiptBody8.Text = String.Format("{0:c}<br />", rec.Total);
            ReceiptFooter.Text = "Org nr 2053 33 53<br />";
            ReceiptFooter.Text += "VÄLKOMMEN ÅTER!";

            if (receiptBox.CssClass == "HideThis")
            {
                receiptBox.CssClass = "ShowThis";
            }
        }
    }
}