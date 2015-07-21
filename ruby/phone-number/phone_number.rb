class PhoneNumber
  DEFAULT = "0000000000"
  VALIDATOR = /^\d{10}$/

  attr_reader :number

  def initialize(phone_number)
    @number = parse(phone_number)
  end

  def area_code
    @number.slice(0..2)
  end

  def to_s
    "(#{area_code}) #{number.slice(3..5)}-#{number.slice(6..-1)}"
  end

  private

  def parse(number)
    number.delete!("() -.")
    number.slice!(0) if number.length != 10 && number.start_with?("1")
    valid?(number) ? number : DEFAULT
  end

  def valid?(number)
    number.match(VALIDATOR)
  end
end

