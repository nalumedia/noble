class PurchaseMailer < ActionMailer::Base
layout 'purchase_mailer'

 default from: "GMN Admin <admin@gridmenow.com>"

 def purchase_receipt signup
 @signup = signup
 mail to: "ryan@gridmenow.com", subject: "Thanks for your purchase!"

  end

end