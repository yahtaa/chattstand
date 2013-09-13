# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'
require 'open-uri'



url = 'http://www.dmdatasecurity.com/stand-results-edit.csv'

puts 'removing old things data'
Response.destroy_all
puts 'connecting'
open(url) do |f|
  puts 'downloading'
  f.each_line do |l|
    CSV.parse(l) do |row|
      case_num = row[0].to_i
      language  = row[1]
      zip = row[2].to_i
      neighborhood =  row[3]
      sex = row[4].to_i
      age = row[5].to_i
      race_ethnicity = row[6].to_i
      education = row[7].to_i
      grade = row[8].to_i
      q1a = row[9]
      q1acode1 = row[10].to_i
      q1acode2  = row[11].to_i
      q1acode3  = row[12].to_i
      q1b = row[13]
      q1bcode1  = row[14].to_i
      q1bcode2  = row[15].to_i
      q1bcode3  = row[16].to_i
      q1c= row[17]
      q1ccode1  = row[18].to_i
      q1ccode2  = row[19].to_i
      q1ccode3  = row[20].to_i
      q1d = row[21]
      q1dcode1  = row[22].to_i
      q1dcode2  = row[23].to_i
      q1dcode3  = row[24].to_i
      q1e = row[25]
      q1ecode1  = row[26].to_i
      q1ecode2  = row[27].to_i
      q1ecode3  = row[28].to_i
      q2a = row[29]
      q2acode1 = row[30].to_i
      q2acode2 =  row[31].to_i
      q2acode3 =  row[32].to_i
      q2b = row[33]
      q2bcode1  = row[34].to_i
      q2bcode2  = row[35].to_i
      q2bcode3  = row[36].to_i
      q2c = row[37]
      q2ccode1  = row[38].to_i
      q2ccode2 = row[39].to_i
      q2ccode3 =  row[40].to_i
      q2d = row[41]
      q2dcode1  = row[42].to_i
      q2dcode2  = row[43].to_i
      q2dcode3  = row[44].to_i
      q2e = row[45]
      q2ecode1  = row[46].to_i
      q2ecode2  = row[47].to_i
      q2ecode3  = row[48].to_i
      q3a = row[49]
      q3acode1  = row[50].to_i
      q3acode2  = row[51].to_i
      q3acode3  = row[52].to_i
      q3b = row[53]
      q3bcode1  = row[54].to_i
      q3bcode2  = row[55].to_i
      q3bcode3  = row[56].to_i
      q3c = row[57]
      q3ccode1  = row[58].to_i
      q3ccode2 = row[59].to_i
      q3ccode3  = row[60].to_i
      q3d = row[61]
      q3dcode1  = row[62].to_i
      q3dcode2  = row[63].to_i
      q3dcode3  = row[64].to_i
      q3e = row[65]
      q3ecode1  = row[66].to_i
      q3ecode2  = row[67].to_i
      q3ecode3  = row[68].to_i
      q4a = row[69]
      q4acode1  = row[70].to_i
      q4acode2  = row[71].to_i
      q4acode3  = row[72].to_i
      q4b = row[73]
      q4bcode1  = row[74].to_i
      q4bcode2  = row[75].to_i
      q4bcode3  = row[76].to_i
      q4c = row[77]
      q4ccode1  = row[78].to_i
      q4ccode2  = row[79].to_i
      q4ccode3  = row[80].to_i
      q4d = row[81]
      q4dcode1  = row[82].to_i
      q4dcode2  = row[83].to_i
      q4dcode3  = row[84].to_i
      q4e = row[85]
      q4ecode1  = row[86].to_i
      q4ecode2  = row[87].to_i
      q4ecode3  = row[87].to_i
      filter = row[88].to_i

      if case_num > 1
        puts "#{case_num} #{language} #{zip} ... adding data!"
        Response.create(:case_num =>  case_num, :language => language, :zip => zip, :neighborhood => neighborhood, :sex => sex, :age => age, :race_ethnicity => race_ethnicity, :education => education, :grade => grade, :q1a => q1a, :q1acode1 => q1acode1, :q1acode2 => q1acode2, :q1acode3 => q1acode3, :q1b => q1b, :q1bcode1 => q1bcode1, :q1bcode2 => q1bcode2, :q1bcode3 => q1bcode3, :q1c => q1c, :q1ccode1 => q1ccode1, :q1ccode2 => q1ccode2, :q1ccode3 => q1ccode3, :q1d => q1d, :q1dcode1 => q1dcode1, :q1dcode2 => q1dcode2, :q1dcode3 => q1dcode3, :q1e => q1e, :q1ecode1 => q1ecode1, :q1ecode2 => q1ecode2, :q1ecode3 => q1ecode3, :q2a => q2a, :q2acode1 => q2acode1, :q2acode2 => q2acode2, :q2acode3 => q2acode3, :q2b => q2b, :q2bcode1 => q2bcode1, :q2bcode2 => q2bcode2, :q2bcode3 => q2bcode3, :q2c => q2c, :q2ccode1 => q2ccode1, :q2ccode2 => q2ccode2, :q2ccode3 => q2ccode3, :q2d => q2d, :q2dcode1 => q2dcode1, :q2dcode2 => q2dcode2, :q2dcode3 => q2dcode3, :q2e => q2e, :q2ecode1 => q2ecode1, :q2ecode2 => q2ecode2, :q2ecode3 => q2ecode3, :q3a => q3a, :q3acode1 => q3acode1, :q3acode2 => q3acode2, :q3acode3 => q3acode3, :q3b => q3b, :q3bcode1 => q3bcode1, :q3bcode2 => q3bcode2, :q3bcode3 => q3bcode3, :q3c => q3c, :q3ccode1 => q3ccode1, :q3ccode2 => q3ccode2, :q3ccode3 => q3ccode3, :q3d => q3d, :q3dcode1 => q3dcode1, :q3dcode2 => q3dcode2, :q3dcode3 => q3dcode3, :q3e => q3e, :q3ecode1 => q3ecode1, :q3ecode2 => q3ecode2, :q3ecode3 => q3ecode3, :q4a => q4a, :q4acode1 => q4acode1, :q4acode2 => q4acode2, :q4acode3 => q4acode3, :q4b => q4b, :q4bcode1 => q4bcode1, :q4bcode2 => q4bcode2, :q4bcode3 => q4bcode3, :q4c => q4c, :q4ccode1 => q4ccode1, :q4ccode2 => q4ccode2, :q4ccode3 => q4ccode3, :q4d => q4d, :q4dcode1 => q4dcode1, :q4dcode2 => q4dcode2, :q4dcode3 => q4dcode3, :q4e => q4e, :q4ecode1 =>  q4ecode1, :q4ecode2  => q4ecode2, :q4ecode3 => q4ecode3, :filter => filter)
      end
    end
  end 
end