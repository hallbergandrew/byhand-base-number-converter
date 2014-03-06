require('rspec')
require('byhand_convertor')

describe('binary') do
  it('give us back a digit for a binary string entered') do
    binary("1000").should(eq(8))
  end
end

describe('trinary') do
  it('give us back a digit for a binary string entered') do
    trinary("100").should(eq(9))
  end
end

describe('hexidecimal') do
  it('gives us back a number when you enter a hexidecimal') do
    hexidecimal("2AB3C").should(eq(174908))
  end
end
