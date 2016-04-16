class CsvRow
  attr_accessor :headers, :csv_contents

  def initialize(headers=[], csv_contents=[])
    @csv_contents = csv_contents
    @headers = headers
  end

  def method_missing(name, *args)
    csv_contents[headers.index(name.to_s)]
  end
end