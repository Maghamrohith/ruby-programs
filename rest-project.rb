require 'httparty'
require 'json'
$url = "http://localhost:3000/api/v0/"

def index
	response = HTTParty.get($url + "projects")
	projects = JSON.parse(response.body)
	puts "*" * 50
	puts "Listing projects"
	puts "*" * 50
	projects.each_with_index do |project, index|
		puts "#{index + 1}. #{project["project"]["name"]}(#{project["project"]["id"]})"
	end
 end 
 def show_errors(project)
 	puts "*" * 50
 	puts "These errors prohibitted the record to be saved"
 	puts "*" * 50
 	puts project["errors"]
 end
 def new_project
 	project = {}
 	puts "enter name"
 	project["name"] = gets.chomp
 	puts "Enter the Client id"
 	project["client_id"] = gets.chomp
 	puts "enter the start date"
 	project["start_date"] = gets.chomp
    puts "enter the end date"
    project["end_date"] = gets.chomp
 	response = HTTParty.post($url + "projects", body: {"project" => project})
 	project = JSON.parse(response.body)
 	if project.has_key?("errors")
 		show_errors(project)
 		new_project
 	else
 		puts "project created : #{project["project"]["name"]}"
 	end
 end
 def edit
 	index 
 	puts "Enter the id of record to edit"
 	id = gets.to_i
 	#invokes the show action 
 	response = HTTParty.patch($url + "projects/#{id}")
 	project = JSON.parse(response.body)
 	if project.has_key?("alert")
 		puts project["alert"]
 	else
    cont = 'y'
    while cont == 'y'
    	puts "1. Name\n2. Client id\n3. Start Date\n4. End Date"
    	option = gets.chomp
    	case option
    	when "1"
    		puts "Enter name"
    		project["name"] = gets.chomp
    	when "2"
    		puts "Enter the client id"
    		project["client_id"] = gets.chomp
    	when "3"
    		puts "Start Date"
    		project["star_tdate"] = gets.chomp
        when "4"
            puts "end date"
            project["end_date"] = gets.chomp
    	else
    		puts "Invalid Option"
    	end
    	puts "Do you wish to continue (y/n)"
    	cont = gets.chomp
    end
    response = HTTParty.patch($url + "projects/#{id}", body: { "project" => project})
    project = JSON.parse(response.body)
    if project.has_key?("errors")
    show_errors(project)
    edit
else
	puts "project Updated : #{project["project"]["name"]}"
 end
end
end
def delete
	index
	puts "Enter the id of the record to delete"
	id = gets.chomp
	response = HTTParty.delete($url + "projects/#{id}")
	project = JSON.parse(response.body)

	if project.has_key?("alert") ## only if the  record not found 
		puts project["alert"]
		delete
	else
		puts project["project"]["name"]
	end
end
def show
	index
	puts " Enter the id to show"
	id = gets.to_i
	response = HTTParty.get($url + "projects/#{id}")
	project = JSON.parse(response.body)
	
	if project.has_key?("alert")
        puts project["alert"]
        show
    else
    	puts project["project"]["name"]
	end
end


 cont = 'y' #initialization
 while cont == 'y'
 	puts "1. List \n2. Add \n3. Edit \n4. Show\n5. Delete"
 	puts "Enter Your option"
 	option = gets.chomp
 	case option
 	when "1" 
 	  index
 	when "2"
 		new_project
 	when "3"
 		edit 
 	when "4"
 	   show
 	when "5"
 	 delete 
 	else 
 		puts "Invalid option"
 	end
 	puts "Do you wish to continue (y/n)"
 	cont = gets.chomp
 end

 puts "Program completed"
