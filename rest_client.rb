require 'httparty'
require 'json'
$url = "http://localhost:3000/api/v0/"

def index
	response = HTTParty.get($url + "clients")
	clients = JSON.parse(response.body)
	puts "*" * 50
	puts "Listing clients"
	puts "*" * 50
	clients.each_with_index do |client, index|
		puts "#{index + 1}. #{client["client"]["name"]}(#{client["client"]["id"]})"
	end
 end 
 def show_errors(client)
 	puts "*" * 50
 	puts "These errors prohibitted the record to be saved"
 	puts "*" * 50
 	puts client["errors"]
 end
 def new_client
 	client = {}
 	puts "enter name"
 	client["name"] = gets.chomp
 	puts "Enter the mobile"
 	client["mobile"] = gets.chomp
 	puts "enter the email"
 	client["email"] = gets.chomp
    puts "website"
    client["website"] = gets.chomp
 	response = HTTParty.post($url + "clients", body: {"client" => client})
 	client = JSON.parse(response.body)
 	if client.has_key?("errors")
 		show_errors(client)
 		new_client
 	else
 		puts "client created : #{client["client"]["name"]}"
 	end
 end
 def edit
 	index 
 	puts "Enter the id of record to edit"
 	id = gets.to_i
 	#invokes the show action 
 	response = HTTParty.get($url + "clients/#{id}")
 	client = JSON.parse(response.body)
 	if client.has_key?("alert")
 		puts client["alert"]
 	else
    cont = 'y'
    while cont == 'y'
    	puts "1. Name\n2. mobile\n3. email\n4. website"
        puts "Enter your option"
    	option = gets.chomp
    	case option
    	when "1"
    		puts "Enter name"
    		client["name"] = gets.chomp
    	when "2"
    		puts "mobile"
    		client["mobile"] = gets.chomp
    	when "3"
    		puts "email"
    		client["email"] = gets.chomp
        when "4"
            puts "website"
            client["website"] = gets.chomp
    	else
    		puts "Invalid Option"
    	end
    	puts "Do you wish to continue (y/n)"
    	cont = gets.chomp
    end
    response = HTTParty.patch($url + "clients/#{id}", body: { "client" => client})
    client = JSON.parse(response.body)
    if client.has_key?("errors")
    show_errors(client)
    edit
else
	puts "client Updated : #{client["client"]["name"]}"
 end
end
end
def delete
	index
	puts "Enter the id of the record to delete"
	id = gets.chomp
	response = HTTParty.delete($url + "clients/#{id}")
	client = JSON.parse(response.body)

	if client.has_key?("alert") ## only if the  record not found 
		puts client["alert"]
		delete
	else
		puts client["client"]["name"]
	end
end
def show
	index
	puts " Enter the id to show"
	id = gets.to_i
	response = HTTParty.get($url + "clients/#{id}")
	client = JSON.parse(response.body)
	
	if client.has_key?("alert")
        puts client["alert"]
        show
    else
    	puts client["client"]["name"]
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
 		new_client
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
