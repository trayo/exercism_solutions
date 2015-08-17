class ETL
  def self.transform(old)
    old.each_with_object({}) do |(num, letters), result|
      letters.each { |letter| result[letter.downcase] = num }
    end
  end
end
