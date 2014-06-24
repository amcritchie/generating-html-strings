class HTMLGenerator

  def initialize(text = "")
    @head = text.split("CONTENT")[0].to_s
    @tail = text.split("CONTENT")[1].to_s
  end

  def section(text)
    @head + "<section>" + text + "</section>" + @tail
  end

  def unordered_list(items)
    text = @head + "<ul>"
    items.each do |item|
      text += ("<li>" + item + "</li>")
    end
    text += "</ul>" + @tail
  end

  def button(str, hsh = {})
    x = (" class=" + "'#{hsh[:class]}'")*hsh.length
    @head + "<button#{x}>#{str}</button>" + @tail
  end
end