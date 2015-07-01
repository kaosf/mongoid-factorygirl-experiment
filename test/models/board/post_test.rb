require 'test_helper'

class Board::PostTest < ActiveSupport::TestCase
  test "factory" do
    board_post = create :board_post
    assert !board_post.id.nil?
    assert board_post.valid?
  end
end
