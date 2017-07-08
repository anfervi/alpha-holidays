country = 'Spain'

admin = User.new
admin.name = 'Angel'
admin.lastname = 'Fernandez'
admin.email = 'afernandez@alfatecsistemas.es'
admin.password  = 'Alpha2017'
admin.password_confirmation  = 'Alpha2017'
admin.role = 0
admin.department = 'Imagen Médica'
admin.save!

admin = User.new
admin.name = 'Julio'
admin.lastname = 'Iglesias'
admin.email = 'jiglesias@alfatecsistemas.es'
admin.password  = 'Alpha2017'
admin.password_confirmation  = 'Alpha2017'
admin.role = 1
admin.department = 'Imagen Médica'
admin.save!
