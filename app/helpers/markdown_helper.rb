module MarkdownHelper
  def markdown(text)
    unless @markdown
      renderer = Redcarpet::Render::HTML.new
      @markdown = Redcarpet::Markdown.new(renderer, tables: true)
    end

    @markdown.render(text).force_encoding("UTF-8").html_safe
  end
end
