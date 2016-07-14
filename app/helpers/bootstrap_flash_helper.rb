module BootstrapFlashHelper
  AVALIABLE_TYPES = %i(info success warning danger)
  def bootstrap_flash
   flash_messages = []
   flash.each do |type, message|
     # Skip Devise :timeout and :timedout flags
     next if type == :timeout
     next if type == :timedout
     type = :error   if type == :danger
     use_type = AVALIABLE_TYPES.include?(type) ? type : :info
     text = content_tag(:div, 
              content_tag(:button, raw("&times;"), :class => "close", "data-dismiss" => "alert") +
              message, :class => "alert fade in alert-#{use_type}")
     flash_messages << text if message
   end
   flash_messages.join("\n").html_safe
 end
end