# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#santo, create admin user
unless User.exists?(email: "santo@santo.com")
	User.create!(firstname: "Rodolfo", lastname: "Guzman Huerta", email: "santo@santo.com", password: "asdfasdf", admin: true
)
end

#santo. create user
unless User.exists?(email: "hectorgool@gmail.com")
  User.create!(firstname: "Hector", lastname: "Gonzalez Olmos", email: "hectorgool@gmail.com", password: "asdfasdf")
end

#santo. create tour
#1
unless Tour.exists?(name: "Mahahual")
  Tour.create!(name: "Mahahual", 
               description: "Mahahual se encuentra sobre la costa del Mar Caribe, a unos 55km de la Carretera Federal 307 Cancún-Chetumal.", 
               price: "99.99", 
               latitude: "18.7167",
               longitude: "-87.7167",
               user_id: "1")
end

#2
unless Tour.exists?(name: "Bacalar")
  Tour.create!(name: "Bacalar", 
               description: "Bacalar es un poblado paradisiaco. Entre pequeñas casas de pescadores emerge la hermosa laguna del mismo nombre que, aseguran, tiene siete tonos de azul. En este hermoso cuerpo de agua es posible nadar, esnorquelear, bucear y realizar tranquilos paseos en lancha. ", 
               price: "89.99", 
               latitude: "18.683333",
               longitude: "-88.4",
               user_id: "1")
end

#3
unless Tour.exists?(name: "Playa del Carmen")
  Tour.create!(name: "Playa del Carmen", 
               description: "Está dentro de la zona turística denominada Riviera Maya. La ciudad (ubicada en las coordenadas 20,62° norte y 87,07° oeste) es bañada por las aguas del Mar Caribe y su principal actividad económica es el turismo.3 Esto viene de la mano que también se genere mucho trabajo en la industria de la construcción, esta es la segunda industria más importante del municipio", 
               price: "79.99", 
               latitude: "20.2661",
               longitude: "-87.6961",
               user_id: "1")
end

#4
unless Tour.exists?(name: "Xel-Ha")
  Tour.create!(name: "Xel-Ha", 
               description: "Xel-Há [ʃel.'ha] es un parque ecológico ubicado en el estado de Quintana Roo, México. Se caracteriza por la caleta en la que el agua subterránea de la península de Yucatán se integra al Mar Caribe, conformando un espacio para la convivencia de diversas especies marinas y de agua dulce. Es por esta razón que Xel-Há es conocido por ser un acuario natural.", 
               price: "79.99", 
               latitude: "20.316700",
               longitude: "-87.354200",
               user_id: "1")
end

#5
unless Tour.exists?(name: "Tulum")
  Tour.create!(name: "Tulum", 
               description: "Tulum o Tuluum es un sitio arqueológico de una antigua ciudad maya. Se encuentra ubicado en la península de Yucatán, sureste de México, Estado de Quintana Roo en un área llamada la Riviera Maya a lo largo del Mar Caribe. ", 
               price: "79.99", 
               latitude: "20.125",
               longitude: "-87.45",
               user_id: "1")
end

#6
unless Tour.exists?(name: "Cabo San Lucas")
  Tour.create!(name: "Cabo San Lucas", 
               description: "Cabo San Lucas es una ciudad de México ubicada en el extremo sur de la península de Baja California y del estado de Baja California Sur. Frente a sus costas se unen las aguas del golfo de California y del océano Pacífico. Su ubicación geográfica es a 22.88° de latitud norte y 109.90° de longitud oeste.", 
               price: "79.99", 
               latitude: "22.889722222222",
               longitude: "-109.91555555556",
               user_id: "1")
end

#7
unless Tour.exists?(name: "Chiapas")
  Tour.create!(name: "Chiapas", 
               description: "Cabo San Lucas es una ciudad de México ubicada en el extremo sur de la península de Baja California y del estado de Baja California Sur. Frente a sus costas se unen las aguas del golfo de California y del océano Pacífico. Su ubicación geográfica es a 22.88° de latitud norte y 109.90° de longitud oeste.", 
               price: "79.99", 
               latitude: "16.753056",
               longitude: "-93.115556",
               user_id: "1")
end

#8
unless Tour.exists?(name: "Puerto Vallarta")
  Tour.create!(name: "Puerto Vallarta", 
               description: "En el 2005, el municipio contaba con una población estimada de 307,107 personas, así como cinco millones de turistas anuales. Junto con el municipio de Bahía de Banderas del estado de Nayarit, conforma la Zona Metropolitana de Puerto Vallarta siendo así la segunda más poblada de ambos estados.", 
               price: "79.99", 
               latitude: "20.616667",
               longitude: "-105.233333",
               user_id: "1")
end

#9
unless Tour.exists?(name: "Cacaluta")
  Tour.create!(name: "Cacaluta", 
               description: "Esta bahía tiene un gran valor natural, paisajístico, ecológico y recreacional. Tiene clima sub-húmedo, ventilación confortable y su vegetación está integrada por selva baja caducifolia y manglares. Para llegar a ella, se recomienda hacerlo por vía marítima, ocupando el servicio de lanchas en la playa Santa Cruz.", 
               price: "79.99", 
               latitude: "15.7256",
               longitude: "-96.1689",
               user_id: "1")
end

#10
unless Tour.exists?(name: "Maruata")
  Tour.create!(name: "Maruata", 
               description: "Si buscas una playa definida por el ambiente natural, dirige tus pasos hacia Maruata, Michoacán. Sus bellos atardeceres, sus callados días, su brisa constante y, sobre todo, su tranquilidad, hacen de este lugar algo inolvidable.", 
               price: "79.99", 
               latitude: "18.25",
               longitude: "-103.35",
               user_id: "1")
end

#11
unless Tour.exists?(name: "San Luis Potosí")
  Tour.create!(name: "San Luis Potosí", 
               description: "Uno puede contemplar durante horas las tres caídas de agua que se suceden una a la otra de manera contigua, sin cansarse del espectáculo. Escuchar su sonido al caer de veinte metros de altura y observar cómo el manto de agua uniforme en la parte superior, se va dividiendo en gajos que se deslizan por las rocas. En algunas partes los gajos son amplios y en otras tan delgados como hilos de plata.", 
               price: "79.99", 
               latitude: "22.149722",
               longitude: "-100.975",
               user_id: "1")
end

#12
unless Tour.exists?(name: "Cuatro Ciénegas")
  Tour.create!(name: "Cuatro Ciénegas", 
               description: "Localizada en la región del desierto, en el Estado de Coahuila, Cuatrociénegas fue escogida por los primeros colonos en virtud de los manantiales de la zona, que forman áreas extensas de pantanos y lagos. Su cabecera es la ciudad de Cuatrociénegas de Carranza.", 
               price: "79.99", 
               latitude: "26.986111",
               longitude: "-102.066389",
               user_id: "1")
end

