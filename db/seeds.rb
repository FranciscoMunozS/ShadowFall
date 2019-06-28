# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#create_table "projects", force: :cascade do |t|
#  t.string "name"
#  t.string "ubication"
#  t.string "bip"
#  t.text "description"
#  t.string "stage"
#end

#create_table "employees", force: :cascade do |t|
#  t.string "name"
#  t.string "rut"
#  t.string "profession"
#  t.string "charge"
#  t.string "amount"
#  t.string "technical_unit"
#  t.string "fiscal_inspector"
#  t.string "person_type"
#end

# Employee.create(name: '', rut: '', profession: '', charge: '', amount: '', technical_unit: '', fiscal_inspector: '', person_type: '')

Employee.create(name: 'FERNANDO SOTO VARGAS', rut: '12.556.103-9', profession: 'INGENIERO CIVIL EN OBRAS CIVILES', charge: '-', amount: '0', technical_unit: '', fiscal_inspector: '', person_type: 'natural')
Employee.create(name: 'ANVIC', rut: '76.478.279-8', profession: '-', charge: '-', amount: '0', technical_unit: 'MUNICIPALIDAD DE LA UNION', fiscal_inspector: '', person_type: 'juridica')
Employee.create(name: 'PEDRO MAURICIO HUENULEF', rut: '10.113.683-3', profession: '-', charge: '-', amount: '0', technical_unit: '', fiscal_inspector: '', person_type: 'natural')
Employee.create(name: 'CHRISTIAN HERNANDEZ', rut: '13.854.099-5', profession: '-', charge: '-', amount: '0', technical_unit: '', fiscal_inspector: '', person_type: 'juridica')
Employee.create(name: 'CONSULTORA Y SERVICIOS MARCELA RODRIGUEZ SAENZ E.I.R.L.', rut: '76.249.409-4', profession: '', charge: '-', amount: '0', technical_unit: '', fiscal_inspector: '', person_type: 'natural')
Employee.create(name: 'ESSAL', rut: '96.579.800-5', profession: '', charge: '-', amount: '0', technical_unit: '', fiscal_inspector: '', person_type: 'juridica')
Employee.create(name: 'HECTOR DE LA CRUZ RODRIGUEZ', rut: '6.248.832-0', profession: '', charge: '-', amount: '0', technical_unit: '', fiscal_inspector: '', person_type: '')
Employee.create(name: 'MAKARENA MABEL VALDOVINOS HERNANDEZ', rut: '12.015.866-4', profession: 'INGENIERO CIVIL EN OBRAS CIVILES', charge: '-', amount: '0', technical_unit: '', fiscal_inspector: '', person_type: 'juridica')
Employee.create(name: 'RPS INGENIERIA E INSPECCIONES LTDA.', rut: '76.153.484-K', profession: '-', charge: '-', amount: '0', technical_unit: '', fiscal_inspector: '', person_type: '')
Employee.create(name: 'CONSULTORA Y SERVICIOS MARCELA RODRIGUEZ SAENZ E.I.R.L.', rut: '76.249.409-4', profession: '-', charge: '-', amount: '0', technical_unit: '', fiscal_inspector: '', person_type: '')
Employee.create(name: 'PATRICIO OLIVARES OLIVARES SERVICIOS DE INGENIERÍA EIRL', rut: '76.540.277-8', profession: '-', charge: '-', amount: '0', technical_unit: '', fiscal_inspector: '', person_type: '')
Employee.create(name: 'FERNADO SOTO VARGAS', rut: '12.556.103-9', profession: '-', charge: '-', amount: '0', technical_unit: '-', fiscal_inspector: '-', person_type: '')
Employee.create(name: 'COZ Y COMPAÑÍA S.A.', rut: '89.485.200-3', profession: 'JEFE ASESORIA', charge: '-', amount: '0', technical_unit: '', fiscal_inspector: '', person_type: '')
Employee.create(name: 'CHRISTIAN HERNANDEZ OJEDA', rut: '13.854.099-5', profession: '-', charge: '-', amount: '0', technical_unit: '', fiscal_inspector: '-', person_type: '')
Employee.create(name: 'PAULINA HAVERBECK BOHMWALD', rut: '9.023.168-5', profession: '-', charge: '-', amount: '0', technical_unit: '', fiscal_inspector: '', person_type: '')
Employee.create(name: 'MASC CONSULTORES EN INGENIERIA Y CONSTRUCCION EIRL', rut: '76.001.975-5', profession: '', charge: '', amount: '', technical_unit: '', fiscal_inspector: '', person_type: '')


Project.create(name: 'CONSTRUCCION INFRAESTRUCTURA SANITARIA ESTACION MARIQUINA, MARIQUINA', ubication: 'MARIQUINA', bip: '30109564', description: '-', stage: 'ejecucion')
Project.create(name: 'CONSTRUCCION SEDE SOCIAL INDIGENA, COMUNA DE LA UNION', ubication: 'LA UNION', bip: '30354092', description: '-', stage: 'ejecucion')
Project.create(name: 'CONSTRUCCION INFRAESTRUCTURA SANITARIA CAUPOLICAN ALTO, LA UNION', ubication: 'LA UNION', bip: '30136383', description: '-', stage: 'ejecucion')
Project.create(name: 'CONSTRUCCION CASETAS SANITARIAS LOCALIDAD DE MANTILHUE RIO BUENO', ubication: 'RIO BUENO', bip: '30122294', description: '-', stage: 'ejecucion')
Project.create(name: 'REPOSICION ESCUELA JOSE ARNOLDO BILBAO P. DE PELCHUQUIN,MARIQUINA', ubication: 'MARIQUINA', bip: '30071487', description: '-', stage: 'ejecucion')
Project.create(name: 'CONSTRUCCION SERVICIO DE APR DE LOS PELLINES, VALDIVIA', ubication: 'VALDIVIA', bip: '30110451', description: '-', stage: 'ejecucion')
Project.create(name: 'MEJORAMIENTO Y AMPLIACION SISTEMA DE APR PUERTO NUEVO, LA UNION', ubication: 'LA UNION', bip: '30110742', description: '-', stage: 'ejecucion')
Project.create(name: 'CONSTRUCCION INFRAESTRUCTURA RESERVA NACIONAL MOCHO CHOSHUENCO ETAPA 1', ubication: '-', bip: '30093786', description: '-', stage: 'ejecucion')
Project.create(name: 'CONSTRUCCION POSTA DE QUILLAHUE, MARIQUINA', ubication: 'MARIQUINA', bip: '30085964', description: '-', stage: 'ejecucion')
Project.create(name: 'HABILITACIÓN ESTACIÓN COLLILELFU, LOS LAGOS', ubication: 'LOS LAGOS', bip: '30095341', description: '-', stage: 'ejecucion')
Project.create(name: 'RESTAURACION Y PUESTA EN VALOR TEATRO GALIA DE LANCO', ubication: 'LANCO', bip: '30086180', description: '-', stage: 'ejecucion')
Project.create(name: 'RESTAURACION Y AMPLIACION DEL MUSEO DE ARTE CONTEMPORANEO', ubication: '-', bip: '30086714', description: '-', stage: 'ejecucion')
Project.create(name: 'NORMALIZACION SISTEMA TRATAMIENTO AGUAS SERVIDAS DE MALALHUE, LANCO', ubication: 'LANCO', bip: '30116561', description: '-', stage: 'ejecucion')
Project.create(name: 'CONSTRUCCIÓN INFRAESTRUCTURA SANITARIA SECTORES IÑAQUE HUILLON, MAFIL', ubication: 'MAFIL', bip: '30358222', description: '-', stage: 'ejecucion')
Project.create(name: 'CONSTRUCCION INFRAESTRUCTURA SANITARIA CHOSHUENCO, PANGUIPULLI', ubication: 'PANGUIPULLI', bip: '30349395', description: '-', stage: 'ejecucion')
Project.create(name: 'CONSTRUCCION INFRAESTRUCTURA SANITARIA LOCALIDAD DE VIVANCO, RIO BUENO', ubication: 'RIO BUENO', bip: '30131439', description: '-', stage: 'ejecucion')
Project.create(name: 'REPOSICION PRIMERA CIA DE BOMBEROS DE CRUCERO COMUNA DE RIO BUENO', ubication: 'RIO BUENO', bip: '30109893', description: '-', stage: 'ejecucion')
Project.create(name: 'REPOSICION CUARTEL INVESTIGACIONES VALDIVIA', ubication: 'VALDIVIA', bip: '30080893', description: '-', stage: 'ejecucion')
