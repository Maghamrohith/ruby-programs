require 'pry'
class ContactForm

	attr_accessor :name,:mobile,:email,:subject,:message

	def details
		"Name : #{name}\n Mobile : #{mobile}\n Email: #{email}\n subject : #{subject}\n message : #{message}\n#{"*"*200}"
	end
end
contact_forms=[]
c1=ContactForm.new
c1.name="rohith"
c1.mobile="987654398"
c1.email ="mahjhshd@gmail.com"
c1.subject=" information"
c1.message="about wb"
contact_forms.push(c1)
#puts "new contact form submission from #{c1.name}"
#puts c1.details


c2=ContactForm.new
c2.name="ravi"
c2.mobile="0987654323456"
c2.email="ravimca@gmail.com"
c2.subject="joining"
c2.message="course"
contact_forms.push(c2)
#puts "new contact form submission from #{c1.name}"
#puts c2.details
binding.pry
contact_forms.each do  |contact_form|
binding.pry
puts contact_form.name+ " "+contact_form.subject
end
