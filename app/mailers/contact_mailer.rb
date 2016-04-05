class ContactMailer < ActionMailer::Base
    default to: "gomacroice@gmail.com"
    def contact_email(name, email, body)
        @name = name
        @email = email
        @body = body
       
        mail(form:email, subjects:"Contact Form Message")
    end
end