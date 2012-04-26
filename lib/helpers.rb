
module Sinatra
  module Helpers
    def content(name, default="")
      # begin
        contents = File.open("public/content/#{name}.md.txt").read
        doc = Maruku.new(contents)
        doc.to_html
      # rescue
      #   default
      # end
    end
  end 
  helpers Helpers
end
