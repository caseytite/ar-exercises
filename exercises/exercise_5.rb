require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...


# 1. Output the total revenue for the entire company (all stores), using Active Record's `.sum` calculation method.
@total_revenue = Store.sum(:annual_revenue)
puts "Total Revenue from all stores $#{@total_revenue}"

# 2. On the next line, also output the average annual revenue for all stores.
@number_of_stores = Store.count
puts "Average annual revenue per store: $#{@total_revenue/@number_of_stores}"

# 3. Output the number of stores that are generating $1M or more in annual sales. **Hint:** Chain together `where` and `size` (or `count`) Active Record methods.
@the_millions = Store.where("annual_revenue > ?",1000000).count
puts "Number of stores pulling a mil: #{@the_millions}"