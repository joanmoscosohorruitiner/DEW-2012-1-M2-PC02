class Tweet < ActiveRecord::Base
  Twitter.configure do |config|
      config.consumer_key = 'fjd9BzDqcpte43ZXk0jQw'
      config.consumer_secret = 'ptahef4YWixSTGRuEnA8LjewRqz8n8uAmoMAGwTs'
      config.oauth_token = '729626396-9dZuprIbmYm9OrMqPb1Ke6EhdHwO0066DftvQQLm'
      config.oauth_token_secret = 'jXX9dDCzdHNm5wt1zcpWYXTmwDq1HOlGMhIdL0O4JRk'
end    

  def read_text
    return "sin status" if self.status.blank?    
    Twitter.status(self.status).text
  end

  def read_message
    return "sin user" if self.user.blank?
    Twitter.user_timeline(self.user).first.text
  end
  
  def update_status
	/return "sin update" if self.message.blank?/
	Twitter.update(self.message)
  end
   
end
