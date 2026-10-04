"""Generate deterministic synthetic customer-performance data for Project 3."""
import csv, random
from datetime import date, timedelta
random.seed(303)
channels=["Online","Retail","Marketplace","Direct"]
segments=["Champions","Loyal","Potential","At Risk","New"]
categories=["Electronics","Home","Personal Care","Office","Lifestyle"]
start=date(2024,1,1)
with open("FactCustomerPerformance.csv","w",newline="") as f:
 w=csv.writer(f); w.writerow(["Date","CustomerID","Channel","Segment","Category","Orders","Revenue","Cost","TargetValue"])
 for i in range(30000):
  d=start+timedelta(days=random.randrange(731)); rev=round(random.uniform(800,28000)*(1.08 if d.year==2025 else 1),2)
  w.writerow([d,f"C{random.randrange(1,2501):04d}",random.choice(channels),random.choice(segments),random.choice(categories),random.randrange(1,6),rev,round(rev*random.uniform(.48,.78),2),round(rev*random.uniform(.92,1.12),2)])
print("Generated 30,000 synthetic rows.")
