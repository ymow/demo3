require 'test/unit'
class Love
    def self.saved?
    true
    end
   
end


class LoveTest < Test::Unit::TestCase
  def test_saved
   assert Love.saved?
  end
 end