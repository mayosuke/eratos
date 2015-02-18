# coding: utf-8

class Eratos
  def self.calc_eratos_for(x)
    # 探索リストに2からxまでの整数を昇順で入れる
    integers = (2..x).to_a
    return integers if integers.length == 1
    # 探索リストの先頭の数を素数リストに移動し、その倍数を探索リストから篩い落とす
    # 上記の篩い落とし操作を探索リストの先頭値がxの平方根に達するまで行う
    primes = []
    while integers.first <= Math.sqrt(x)
      primes << integers.shift
      integers = integers.select {|i| i.modulo(primes.last) != 0}
    end
    # 探索リストに残った数を素数リストに移動して処理終了
    primes += integers
  end
end

def valid_args?(args)
  if ARGV.length == 0
    false
  elsif ARGV.length > 1
    false
  elsif Integer(args[0]) < 2
    false
  else
    true
  end
rescue
  false
end

if __FILE__ == $0
  if valid_args?(ARGV)
    print Eratos.calc_eratos_for(Integer(ARGV[0])).join(', ')
  else
    print ''
  end
end

