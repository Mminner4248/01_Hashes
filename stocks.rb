stock_dict = { 'GM' => 'General Motors',
'CAT' => 'Caterpillar', 'EK' => "Eastman Kodak" }

purchases = [ 
[ 'GM', 100, '10-sep-2001', 48 ],
[ 'CAT', 100, '1-apr-1999', 24 ],
[ 'GM', 200, '1-jul-1998', 56 ] 
    ]

def printStock(arr, dict)
    for item in arr
        puts "#{dict[item[0]]} : #{item[1] * item[3]}"
    end
end

printStock(purchases, stock_dict)

 
StockSummary = Hash.new

stock_dict.each do |key, value|
    StockSummary[key] = []
end

puts StockSummary

for item in purchases
    StockSummary.each do |key, value|
        if item[0] == key
            value.push(item)
        end
    end
end

puts StockSummary