class IsbnBarCode
  attr_accessor :code

  def initialize(code)
    @code = code
    @aux = 0
  end

  def generate
    list = @code.to_s.split("").map(&:to_i)
    count = 0
    list.each do |_number|
      if count % 2 == 0
        @aux += _number
      else
        @aux += (_number * 3)
      end
      count += 1
    end
    list.push(self.rest).join.to_i
  end

  private

  def rest
    _rest = @aux % 10
    if _rest == 0
      return _rest
    else
      return 10 - _rest
    end
  end
end

