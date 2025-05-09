// Import the framework and instantiate it
import Fastify from 'fastify'
const PORT = 9847
const fastify = Fastify({
  logger: true
})

fastify.get('/', async (request, reply) => {
  return { address: [
    {
        route: "/game",
        method: "GET",
        description: "Get All Games, The selected game type and if the game is active",
        example: {
          games: getGames(),
          gameType: getGameTypes()[0],
          isPlaying: Math.random() > 0.5,
        }
        
    },
    {
        route: "/homeOwners",
        method: "GET",
        description: "Get All Home Owners",
        example: [
          getPeople()[0].homeOwner,
        ]
    },
    {
      route: "/homeAddress",
      method: "GET",
      description: "Get All Home Owners addresses",
      example: [
        getPeople()[0].homeAddress,
      ]
  }
  ]}
})

// Game
fastify.get('/game', async function handler (request, reply) {
  return {
    games: getGames(),
    gameType: getGameTypes()[Math.floor(Math.random() * getGameTypes().length)],
    isPlaying: Math.random() > 0.5,
  }
  
})

function getGameTypes() {
    return [
        "rpg",
        "fps",
        "puzzle",
        "strategy",
        "arcade",
        "simulation",
        "sports",
    ]
}

function getGames() {
    return [
        "Poker",
        "Blackjack",
        "Roulette",
        "Baccarat",
        "Chess",
        "Checkers",
    ]
}
// People
fastify.get('/homeOwners', async function handler (request, reply) {
  return getPeople().map((person) => {
    return person.homeOwner
})
  })

fastify.get('/homeAddress', async function handler (request, reply) {
    return getPeople().map((person) => {
        return person.homeAddress
    })
})

function getPeople() {
    return [
        
            {
              homeOwner: {
                name: "John Doe",
                address: "123 Main St, Springfield, USA",
                age: 35
              },
              homeAddress: {
                address: "123 Main St",
                zipCode: "12345",
                cityName: "Springfield",
                stateName: "IL",
                homeOwner: "John Doe"
              }
            },
            {
              homeOwner: {
                name: "Jane Smith",
                address: "456 Oak Ave, Lakeview, USA",
                age: 42
              },
              homeAddress: {
                address: "456 Oak Ave",
                zipCode: "55044",
                cityName: "Lakeview",
                stateName: "MN",
                homeOwner: "Jane Smith"
              }
            },
            {
              homeOwner: {
                name: "Robert Johnson",
                address: "789 Maple Dr, Centerville, USA",
                age: 38
              },
              homeAddress: {
                address: "789 Maple Dr",
                zipCode: "75833",
                cityName: "Centerville",
                stateName: "TX",
                homeOwner: "Robert Johnson"
              }
            },
            {
              homeOwner: {
                name: "Emily Davis",
                address: "321 Elm St, Greenville, USA",
                age: 27
              },
              homeAddress: {
                address: "321 Elm St",
                zipCode: "29601",
                cityName: "Greenville",
                stateName: "SC",
                homeOwner: "Emily Davis"
              }
            },
            {
              homeOwner: {
                name: "Michael Brown",
                address: "135 Pine Rd, Hometown, USA",
                age: 35
              },
              homeAddress: {
                address: "135 Pine Rd",
                zipCode: "32003",
                cityName: "Hometown",
                stateName: "FL",
                homeOwner: "Michael Brown"
              }
            },
            {
              homeOwner: {
                name: "Lisa Wilson",
                address: "246 Cedar Ln, Brookfield, USA",
                age: 50
              },
              homeAddress: {
                address: "246 Cedar Ln",
                zipCode: "53005",
                cityName: "Brookfield",
                stateName: "WI",
                homeOwner: "Lisa Wilson"
              }
            },
            {
              homeOwner: {
                name: "James Martinez",
                address: "579 Birch Blvd, Rivertown, USA",
                age: 31
              },
              homeAddress: {
                address: "579 Birch Blvd",
                zipCode: "98001",
                cityName: "Rivertown",
                stateName: "WA",
                homeOwner: "James Martinez"
              }
            },
            {
              homeOwner: {
                name: "Angela Thompson",
                address: "864 Willow Way, Sunnyvale, USA",
                age: 29
              },
              homeAddress: {
                address: "864 Willow Way",
                zipCode: "94086",
                cityName: "Sunnyvale",
                stateName: "CA",
                homeOwner: "Angela Thompson"
              }
            },
            {
              homeOwner: {
                name: "Kevin Anderson",
                address: "910 Aspen Ct, Mountain View, USA",
                age: 45
              },
              homeAddress: {
                address: "910 Aspen Ct",
                zipCode: "80439",
                cityName: "Mountain View",
                stateName: "CO",
                homeOwner: "Kevin Anderson"
              }
            },
            {
              homeOwner: {
                name: "Natalie Moore",
                address: "112 Cherry St, Anytown, USA",
                age: 33
              },
              homeAddress: {
                address: "112 Cherry St",
                zipCode: "12346",
                cityName: "Anytown",
                stateName: "CA",
                homeOwner: "Natalie Moore"
              }
            }
          
          
    ];
    
}

// Run the server!
try {
  await fastify.listen({ port: PORT })
} catch (err) {
  fastify.log.error(err)
  process.exit(1)
}