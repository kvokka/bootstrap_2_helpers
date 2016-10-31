module BootstrapFlashHelper
  AVALIABLE_TYPES = %w(info success warning danger).freeze
  def bootstrap_flash
    flash_messages = []
    flash.each do |type, message|
      # Skip Devise :timeout and :timedout flags
      type_to_s = type.to_s
      next if type_to_s == 'timeout' || type_to_s == 'timedout'
      type_to_s = 'error' if type_to_s == 'danger'
      use_type = AVALIABLE_TYPES.include?(type_to_s) ? type_to_s : :info
      text = content_tag(:div,
                         content_tag(:button, raw('&times;'), :class => 'close', 'data-dismiss' => 'alert') +
                         message, class: "alert fade in alert-#{use_type}")
      flash_messages << text if message
    end
    flash_messages.join("\n").html_safe
 end
end
