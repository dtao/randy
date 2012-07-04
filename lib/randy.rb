module Randy
  DEFAULT_CHARS = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ".split("").freeze

  def self.string(length, chars=DEFAULT_CHARS)
    chars = chars.is_a?(String) ? chars.split("") : chars
    (1..length).inject("") { |s, c| s << chars[rand(chars.count)] }
  end

  def self.integer(range)
    return range.min if range.max == range.min
    return range.min + rand(1 + range.max - range.min)
  end

  def self.decimal(range)
    return range.begin + ((range.end - range.begin) * rand())
  end
end
