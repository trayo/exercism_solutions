class PhoneNumber
  DEFAULT = "0000000000"

  attr_reader :number

  def initialize(phone_number)
    @number = valid_parsed_number?(phone_number) ? parse(phone_number) : DEFAULT
  end

  def area_code
    @number.slice(0..2)
  end

  def to_s
    "(#{area_code}) #{number.slice(3..5)}-#{number.slice(6..-1)}"
  end

  private

  def valid_parsed_number?(number)
    parse(number).match(/^\d{10}$/)
  end

  def parse(number)
    number.slice!(0) if number.length != 10 && number.start_with?("1")
    number.delete("() -.")
  end
end
