country = 'Spain'

admin = User.new
admin.name = 'alpha'
admin.lastname = 'holidays'
admin.email = 'alpha_holidays@aplha.es'
admin.password  = 'Alpha2017'
admin.password_confirmation  = 'Alpha2017'
admin.role = 'admin'
admin.department = 'Imagen Médica'
admin.save!
