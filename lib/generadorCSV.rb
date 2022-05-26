require 'csv'
require_relative './helpers'
require_relative "csvLargeProcessing/version"
headers = ['Date', 'ISBN', 'Amount']

Date    = "2008-04-12"
ISBN   = "978-1-9343561-0-4"
Amount    = 39.45
ingreso=  ARGV[0].to_i


resultado= ingreso *((1024*1000000)/35) 

if ingreso == 0
  resultado= 1000000


end





print_memory_usage do
  print_time_spent do
    CSV.open('data.csv', 'w', write_headers:true, headers: headers, quote_char: "|", col_sep: ',') do |csv|
      resultado.to_i.times do |i|
        csv << [Date, ISBN,Amount]
      end
    end
  end
end
