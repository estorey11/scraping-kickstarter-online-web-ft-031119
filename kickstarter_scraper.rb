# require libraries/modules here
require "nokogiri"
require "pry"

def create_project_hash
  html = File.read('fixtures/kickstarter.html')
 
  kickstarter = Nokogiri::HTML(html)
  
  proiects={}
  
  kickstarter.css("li.project.grid_4").each do |project|
    projects[project] = {}
  end
  
  projects
  
  
  #location: projects.css("ul.project-meta li a span.location-name").text
end

create_project_hash