require_relative('csv_row.rb')

module ActsAsCsv
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def acts_as_csv
      include InstanceMethods
      include Enumerable
    end
  end

  module InstanceMethods
    def read
      @csv_contents = []
      filename = self.class.to_s.downcase + '.txt'
      file = File.new(filename)
      @headers = file.gets.chomp.split(', ' )
      file.each do |row|
        @csv_contents << CsvRow.new(headers, row.chomp.split(', ' ))
      end
    end
    attr_accessor :headers, :csv_contents
    def initialize
      read
    end
    def each(&block)
      @csv_contents.each &block
    end
  end
end