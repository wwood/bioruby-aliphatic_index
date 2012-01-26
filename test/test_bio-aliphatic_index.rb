require 'helper'

class TestBioAliphaticIndex < Test::Unit::TestCase
  should "aliphatic" do
    assert_equal 71.33, (Bio::Sequence::AA.new('MVKSYDRYEYEDCLGIVNSKSSNCVFLNNA').aliphatic_index*100).round.to_f/100 
    assert_equal 0.0, Bio::Sequence::AA.new('M').aliphatic_index
  end
end
