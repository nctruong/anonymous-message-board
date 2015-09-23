class Message < ActiveRecord::Base
    validates :text, length: {minimum: 10}
    after_create do 
    	$redis.publish 'amb-channel', {msg:'created'}.to_json
    end    
end
