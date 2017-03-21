require 'rubygems'
require 'mechanize'

#
# TfcRegistrator
#
class TfcRegistrator
  TFC_REGISTRATION_URL = 'https://tfc.tv/User/Register'.freeze

  def call
    agent = Mechanize.new
    page = agent.get(TFC_REGISTRATION_URL)
    form = page.forms.last
    current_time = Time.now
    email = "hello+tfc#{current_time.day}#{current_time.month}#{current_time.year}@taxikick.com"

    form.login_email = email
    form.login_pass = 'fist-troika-apparel'
    form.first_name = 'Hello'
    form.last_name = 'Taxikick'

    page = agent.submit(form)
  end
end

TfcRegistrator.new.call