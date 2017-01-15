class Tweet < ActiveRecord::Base
  belongs_to :users

  validates: :tweet, presence: true, limit: {in: 1..150,
    too_long: "%{count} characters max", too_short: 'Your tweet cannot be empty' }
end
