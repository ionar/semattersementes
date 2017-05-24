class Contact < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      #:reply_to => "naoresponda@teste.com",
      :subject => "Formulário de contato - semattersementes.com.br",
      :to => "irm@ionar.com.br",
      :from => %("#{name}" <#{email}>),
      :reply_to => %("#{name}" <#{email}>)
    }
  end
  append :remote_ip, :user_agent
end