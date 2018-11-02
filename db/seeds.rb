require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'name.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = Conman.new
  t.sido = row['시도명']
  t.gusigun = row['구시군명']
  t.election = row['선거명']
  t.names = row['기초의원들']
  t.save
end
