# coding: utf-8

require File.expand_path(File.dirname(__FILE__) + '/../eratos.rb')

describe Eratos do
  specify { expect(`ruby ./eratos.rb 2`).to eq "2"}
  specify { expect(`ruby ./eratos.rb 3`).to eq "2, 3"}
  specify { expect(`ruby ./eratos.rb 4`).to eq "2, 3"}
  specify { expect(`ruby ./eratos.rb 5`).to eq "2, 3, 5"}
  specify { expect(`ruby ./eratos.rb 6`).to eq "2, 3, 5"}
  specify { expect(`ruby ./eratos.rb 7`).to eq "2, 3, 5, 7"}
  specify { expect(`ruby ./eratos.rb 30`).to eq "2, 3, 5, 7, 11, 13, 17, 19, 23, 29"}
  specify { expect(`ruby ./eratos.rb 100`).to eq "2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97"}
end

