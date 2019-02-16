require 'yaml' 
require 'csv' 

#csv = "ip,something,domain 
#x,y,z 
#a,b,c 
#m,n,o" 

csv = "プロジェクトコード,見積金額,,,,
18-001,10000,,,,
18-002,20000,,,,"

data = [] 

CSV.parse(csv, headers: true).each do |row| 
    hash = row.to_h 
    # hash looks like : 
    # {"ip"=>"x", " something"=>"y", " domain"=>"z"} 
    # Apply desired logic to it 
    data << hash 
end 

puts data.to_yaml 
