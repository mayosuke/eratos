# coding: utf-8

require File.expand_path(File.dirname(__FILE__) + '/../eratos.rb')

describe Eratos do
  # Formal Cases
  # 下記URLから得られる2から271までの素数のリストを答えとして、
  # 引数を2から271までインクリメントして期待される答えが得られる事を確認する 
  # refs: http://oeis.org/A000040
  primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199, 211, 223, 227, 229, 233, 239, 241, 251, 257, 263, 269, 271]
  (2..271).each do |x|
    specify { expect(`ruby ./eratos.rb #{x}`).to eq primes.select{|n| n <= x}.join(', ')}
  end

  # Informal Cases
  specify { expect(`ruby ./eratos.rb`).to eq ''}
  specify { expect(`ruby ./eratos.rb 100 200`).to eq ''}
  specify { expect(`ruby ./eratos.rb -1`).to eq ''}
  specify { expect(`ruby ./eratos.rb 0`).to eq ''}
  specify { expect(`ruby ./eratos.rb 1`).to eq ''}
  specify { expect(`ruby ./eratos.rb hoge`).to eq ''}
end

