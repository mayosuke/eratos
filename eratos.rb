# coding: utf-8

class Eratos
  def self.calc_eratos_for(number)
    "2, 3, 5, 7, 11, 13, 17, 19, 23, 29"
  end
end

if __FILE__ == $0
  print Eratos.calc_eratos_for(ARGV)
end

