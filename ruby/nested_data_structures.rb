    
Planet = {
  Earth: {
   Continents: {
      North_America: {
        USA: {
          texas: ["Austin", "Dallas", "Houston"],
          california: ["San Diego", "Los Angeles", "San Francisco"],
          colorado: ["Denver","Boulder","Vail"]
          },
        },
        South_America: {
                  Peru: ["Peru", "Lima"]
        },  
        Europe: {
          Germany: ['munich','berlin'],
          Italy: ['Bolzano', 'Milan'['Rome','Arco']],
          France: ['Paris', 'St. Antonin']
        }
      },
    Mars: {
      Feature: {Moons: ['moon1', 'moon2']
           },
    neptune: {
         Continents: {Region1: ['city1', 'city2', 'city3'] },
    Pluto: {
         Continents: {Region1: ['city1', 'city2', 'city3']}, 
          }
      }
   }
  }
}
#comment out to test:
#print the cities in germany and italy
#p Planet[:Earth][:Continents][:Europe][:Germany] + Planet[:Earth][:Continents][:Europe][:Italy]
#Capitalize the first city in Germany
#p Planet[:Earth][:Continents][:Europe][:Germany][0].capitalize
#Capitalize the 3rd letter in the first German city
#p Planet[:Earth][:Continents][:Europe][:Germany][0][2].capitalize
#p Planet[:Earth][:Continents][:Europe][:Italy].flatten
p Planet[:Earth][:Continents][:Europe][:Germany].map  {|city| city.capitalize }