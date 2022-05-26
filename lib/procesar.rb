require_relative 'helpers'
require 'csv'

print_memory_usage do
  print_time_spent do
    sum = 0

    CSV.foreach('data.csv', headers: true) do |row|
        sum += row['Amount'].to_f
    end

    puts "Total value = #{sum.ceil(3)}"
  end
end