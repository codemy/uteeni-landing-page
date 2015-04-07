$ ->
  $('#contact-form').submit (e) ->
    e.preventDefault()
    form_data = $(@).serializeObject()

    $.ajax
      url: 'https://mandrillapp.com/api/1.0/messages/send.json'
      dataType: 'json'
      type: 'POST'
      data: 
        key: 'x9CuMIO5tPbLJY-SPvRP3w'
        message: 
          html: "<p>Email: #{form_data.email}</p>
                 <p>Subject: #{form_data.subject}</p>
                 <p>Address: #{form_data.address}</p>"

          text: "Email: #{form_data.email}\n
                 Subject: #{form_data.subject}\n
                 Address: #{form_data.address}"

          subject: "#{form_data.subject}"
          from_email: "#{form_data.email}"
          from_name: "#{form_data.email}"
          subaccount: "bedriftsoket-static"
          to: [
            { 
              email: "admin@bedriftsoket.no",
              name: "Bedriftsoket Admin",
              type: "to" 
            }
          ]

      beforeSend: (xhr, settings) =>
        $(@).find('input, textarea').attr('disabled', 'disabled')
        $(@).find('button').text('Sending...')

      success: (data, textStatus, xhr) =>
        $(@).find('input, textarea').val('')
        $(@).find('button').text("Message Sent!").delay(1000)