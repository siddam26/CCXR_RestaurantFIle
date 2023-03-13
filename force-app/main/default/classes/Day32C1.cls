public class Day32C1 {
    public Map<string, list<integer>> QuaterlySales = new Map<string, list<integer>>();
     public list<integer> EastSales = new list<integer>{10000,25000,6500,45000};
     public list<integer> WestSales = new list<integer>{35000,28000,32000};
     public list<integer> NorthSales = new list<integer>{45000,38000};
     public list<integer> SouthSales = new list<integer>{25000,35000,75200,1000};
     
         
        public list<integer> Total = new list<integer>();
         public   void salesRecords()
          {
            integer sum =0;
           	QuaterlySales.put('East', EastSales);
         	QuaterlySales.put('West', WestSales);
         	QuaterlySales.put('North', NorthSales);
         	QuaterlySales.put('South', SouthSales);

          {
            for(integer i=0;i<QuaterlySales.size();i++)
             {
               Total.addAll(QuaterlySales.values()[i]);
             }
              system.debug('Quaterly sales of all Zones:'+Total);
              for(integer j:Total)
                  {
                     sum +=j;
                  }
                  system.debug('Total sales of zones:'+sum);
         }

     }
    
}


/*Day32C1 obj2 = new Day32C1();
obj2.salesRecords();*/