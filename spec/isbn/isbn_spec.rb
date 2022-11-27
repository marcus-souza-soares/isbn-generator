require "isbn_test"

describe IsbnBarCode do
  specify "verify isbn code generator" do
    _test_list = [
      { code: 978014300723, result: 9780143007234 },
      { code: 111111111111, result: 1111111111116 },
      { code: 222222222222, result: 2222222222222 },
      { code: 254315629725, result: 2543156297255 },
    ]

    _test_list.each do |el|
      result = IsbnBarCode.new(el[:code]).generate
      expect(result).to eq(el[:result])
    end
  end
end
