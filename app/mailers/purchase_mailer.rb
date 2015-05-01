class PurchaseMailer < ActionMailer::Base
layout 'purchase_mailer'

 default from: "GridMeNow Signups <signup@gridmenow.com>"

 def purchase_receipt signup
 @signup = signup
 mail to: "support@gridmenow.com", subject: "Application Signup: noble.gmn3.com"

  end

end