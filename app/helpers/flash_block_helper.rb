module FlashBlockHelper
  AVAIABLE_TYPES = %w[info success warning danger]
  def flash_block
    output = ''
    flash.each do |type, message|
      output += flash_container(type, message)
    end

    raw(output)
  end

  def flash_container(type, message)
    use_type = AVAIABLE_TYPES.include?(type.to_s) ? type : 'info'
    raw(content_tag(:div, :class => "alert alert-#{use_type}") do
      content_tag(:a, raw("&times;"),:class => 'close', :data => {:dismiss => 'alert'}) +
      message
    end)
  end
end
