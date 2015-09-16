class Message < ActiveRecord::Base
    validates :text, length: {minimum: 10}
end
