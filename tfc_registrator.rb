require 'rubygems'
require 'mechanize'

class TfcRegistrator
  TFC_REGISTRATION_URL = 'https://tfc.tv/User/Register'.freeze

  def call
    agent = Mechanize.new
    page = agent.get(TFC_REGISTRATION_URL)
    form = page.forms.last
    current_time = Time.now

    form.login_email = 'email'
    form.login_pass = 'password'
    form.first_name = 'John'
    form.last_name = 'Doe'

    agent.submit(form)
  end
end

TfcRegistrator.new.call