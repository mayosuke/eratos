# coding: utf-8

require File.expand_path(File.dirname(__FILE__) + '/../eratos.rb')

describe Eratos do
  specify { expect(`ruby ./eratos.rb 30`).to match "2, 3, 5, 7, 11, 13, 17, 19, 23, 29"}
end

