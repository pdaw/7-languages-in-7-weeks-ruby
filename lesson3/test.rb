require_relative 'ruby_csv_class.rb'

ruby_csv = RubyCsv.new
ruby_csv.each {|row| p row.header1}


