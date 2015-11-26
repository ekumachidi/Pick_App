require 'test_helper'

class UserTest < ActiveSupport::TestCase
   test "the truth" do
    assert true
   end

  def test_for_save
  	user = User.ner
  	assert_not user.save
  end

end
