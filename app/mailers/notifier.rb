class Notifier < ActionMailer::Base
  default from: "snacks@idyllic-software.com"

  RECIPIENT_LIST = %w(
                    abhijeet@idyllic-software.com
                    abhijit@idyllic-software.com
                    akshay@idyllic-software.com
                    anagha@idyllic-software.com
                    aniket@idyllic-software.com
                    anikets@idyllic-software.com
                    chetan@idyllic-software.com
                    dhavalkpd@idyllic-software.com
                    harshniket@idyllic-software.com
                    kamal@idyllic-software.com
                    madhura@idyllic-software.com
                    nehajain@idyllic-software.com
                    sachin@idyllic-software.com
                    sandesh@idyllic-software.com
                    supriya@idyllic-software.com
                    vaibhav@idyllic-software.com
                    vinod@idyllic-software.com
                    vipala@idyllic-software.com
                   )

  def place_orders
    mail(to: RECIPIENT_LIST,
         subject: 'PLACE ORDERS FOR SNACKS.').deliver
  end
end
