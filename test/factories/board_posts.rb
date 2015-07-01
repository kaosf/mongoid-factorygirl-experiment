FactoryGirl.define do
  factory :board_post, :class => 'Board::Post' do
    name 'Title'
    text 'Body'
  end
end
