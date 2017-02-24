require 'rubygems'
require 'mechanize'

TFC_REGISTRATION_URL = 'https://tfc.tv/User/Register'.freeze

site = Mechanize.new
site.get(TFC_REGISTRATION_URL) do |page|

end