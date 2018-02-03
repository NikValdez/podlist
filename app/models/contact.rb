class Contact < MailForm::Base
  attributes :name,  :validate => true
  attributes :email, :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attributes :message
  attributes :nickname,   :captcha => true


   def headers
    {
      :to => "#{email}",
      :subject => "Playlist",
      :from => %("#{name}" <#{email}>)
    }
	end
end
