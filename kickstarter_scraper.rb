# require libraries/modules here
require "nokogiri"
require "pry"

def create_project_hash
  html = File.read('fixtures/kickstarter.html')
 
  kickstarter = Nokogiri::HTML(html)
  projects= kickstarter.css("li.project.grid_4")
  binding.pry
  
  #location: projects.css("ul.project-meta li a span.location-name").text
end

create_project_hash