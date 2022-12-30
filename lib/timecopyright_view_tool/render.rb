module TimecopyrightViewTool
  class Renderer
    def self.copyright name, msg
      "&copy; #{Time.now.year} Mr. <b>#{name}</b>. #{msg}".html_safe
    end
  end
end
