class Pangram

  VERSION = 2

  def self.is_pangram?(pangram)
    Pangrammer.new(pangram).is_pangram?
  end

  class Pangrammer
    ALPHABET = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
    UNWANTED_CHARACTERS = /[._"\s\d\u0080-\u00ff]/

    def initialize(pangram)
      @pangram = pangram.downcase.gsub(UNWANTED_CHARACTERS, "")
    end

    def is_pangram?
      ALPHABET == @pangram.split("").uniq.sort
    end
  end
end

module BookKeeping
  VERSION = 2
end
