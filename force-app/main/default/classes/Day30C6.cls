public class Day30C6 {
    public integer qty;
    public integer price;
    public string Ctype;
  
  public void callDiscountClass(integer q,integer p,string t)
  {
      this.qty=q;
      this.price=p;
      this.ctype=t;
      if(ctype=='employee')
      {
          Day30C51.calculatediscount(qty,price,ctype);
      }
      else if(ctype=='wholesaler')
      {
          Day30C52.calculatediscount(qty,price,ctype);
      }
      else
      {
          Day30C53.calculatediscount(qty,price,ctype);
      }
  }

}
/*Day30C6 obj1 =new Day30C6();
obj1.callDiscountClass(10,250,'customer');*/