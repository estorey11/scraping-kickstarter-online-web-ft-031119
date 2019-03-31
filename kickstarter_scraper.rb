# require libraries/modules here
require "nokogiri"
require "pry"

def create_project_hash
  html = File.read('fixtures/kickstarter.html')
 
  kickstarter = Nokogiri::HTML(html)
  
  proiects={}
  
  
  #location: projects.css("ul.project-meta li a span.location-name").text
end

create_project_hash