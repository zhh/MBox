# Load the rails application
require File.expand_path('../application', __FILE__)

#for install Jquery-ujs,make sure that you remove those lines after you install jquery-rails
#require 'openssl'
#OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

# Initialize the rails application
MBox::Application.initialize!

ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
  if html_tag =~ /<label/
    %|<div class="fieldWithErrors">#{html_tag} <span class="error">#{[instance.error_message].join(', ')}</span></div>|.html_safe
  else
    html_tag
  end
end

require 'will_paginate'
# will_paginate custom label
WillPaginate::ViewHelpers.pagination_options[:previous_label] = '<< 上一页'
WillPaginate::ViewHelpers.pagination_options[:next_label] = '下一页 >>'