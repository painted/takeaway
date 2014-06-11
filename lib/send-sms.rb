require 'twilio-ruby'
 

def create_sms
	header = order.display_header 
	body = order.display_to_s
	footer = order.display_footer
	message = "#{header} #{body} #{footer}"
end



def send_sms
	create_sms
 # test credentials 
	account_sid = 'AC4a3c76c6e67101b36fffdfa4b39f8abd' 
	auth_token = '5359b597fcac47d939480e5cf7ddd9d4' 
# set up a client to talk to the Twilio REST API 
	@client = Twilio::REST::Client.new account_sid, auth_token 
	@client.account.messages.create({
	:from => '+441262722027', 
	:to => '+447753192332', 
	:body => "#{message}"
	})
	end
