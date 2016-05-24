#Eric Bonilla
#COEN 164 Lab 2
#4-14-16

require_relative 'csv_reader'

reader = CsvReader.new

#ARGV is an array that contains each of the command line args
#passed to the running program.

ARGV.each do |csv_file_name|
  STDERR.puts "Processing #{csv_file_name}"
  reader.read_in_csv_data(csv_file_name)
end

puts "Total value = #{reader.total_value_in_stock}"
