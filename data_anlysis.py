# Data Analysis Practice
# Author: Mukhammad Tursunaliev

# Sample sales data
sales = [1200, 850, 1500, 920, 1100, 780, 1350]
months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul"]

# Calculate total sales
total = sum(sales)
print("Total Sales:", total)

# Calculate average sales
average = total / len(sales)
print("Average Monthly Sales:", round(average, 2))

# Find best month
best_index = sales.index(max(sales))
print("Best Month:", months[best_index], "with", max(sales))

# Find worst month
worst_index = sales.index(min(sales))
print("Worst Month:", months[worst_index], "with", min(sales))
