module FlashBlockHelper
  def flash_block
    output = ''
    flash.each do |type, message|
      output += flash_container(type, message)
    end

    raw(output)
  end

  def flash_container(_type, message)
    raw(content_tag(:div, class: "alert alert-#{use_type}") do
      content_tag(:a, raw('&times;'), class: 'close', data: { dismiss: 'alert' }) +
      message
    end)
  end
end
