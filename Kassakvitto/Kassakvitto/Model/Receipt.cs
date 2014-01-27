using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Kassakvitto
{
    public class Receipt
    {
        private double _subtotal;

        public double SubTotal
        {
            get { return _subtotal; }
            private set 
            {
                if (value <= 0)
                {
                    throw new ArgumentException("Summan får inte vara mindre än eller lika med 0");
                }
                _subtotal = value;
            }
        }

        public double DiscountRate
        {
            get;
            private set;
        }

        public double MoneyOff
        {
            get;
            private set;
        }

        public double Total
        {
            get;
            private set;
        }

        public Receipt(double subtotal)
        {
            SubTotal = subtotal;
        }

        public void Calculate(double Subtotal)
        {
            DiscountRate = GetDiscountRate(SubTotal);

            MoneyOff = (DiscountRate / 100) * SubTotal;

            Total = SubTotal - MoneyOff;
        }

        private double GetDiscountRate(double total)
        {
            if (total < 500)
            {
                return 0;
            }
            else if (total >= 500 && total < 1000)
            {
                return 5;
            }
            else if (total >= 1000 && total < 5000)
            {
                return 10;
            }
            else // total >= 5000
            {
                return 15;
            }
        }
    }
}