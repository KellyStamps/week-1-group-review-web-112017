## QUESTION 1

pokemon = [
  {
    "id": 1,
    "name": "bulbasaur",
    "base_experience": 64,
    "height": 7,
    "is_default": true,
    "order": 1,
    "weight": 69,
    "abilities": [
        {
            "is_hidden": true,
            "slot": 3,
            "ability": {
                "name": "chlorophyll",
                "url": "http://pokeapi.co/api/v2/ability/34/"
            }
        }
    ]
},



{
  "id": 3,
  "name": "venesaur",
  "base_experience": 50,
  "height": 10,
  "is_default": true,
  "order": 1,
  "weight": 90,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "fire",
              "url": "http://pokeapi.co/api/v2/ability/38/"
          }
      }
  ]
},
{
  "id": 2,
  "name": "pikachu",
  "base_experience": 60,
  "height": 4,
  "is_default": true,
  "order": 1,
  "weight": 37,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "lightning",
              "url": "http://pokeapi.co/api/v2/ability/30/"
          }
      }
  ]
}
]


# How would you get the url for Bulbasaur's ability?
def get_bulbasaur_url (pokemon)
  pokemon.each do |char_info|
    if char_info[:name] == "bulbasaur"
      return char_info[:abilities][0][:ability][:url]
    end
  end
end
# How would you return the first pokemon with base experience over 40?
def base_experience_over_40 (pokemon)
  pokemon.find { |char_info|
      char_info[:base_experience] > 40
  }
end
# How would you return ALL OF THE pokemon with base experience over 40? (Gotta catch em all)
def all_base_experience_over_40 (pokemon)
  pokemon.select { |char_info|
      char_info[:base_experience] > 40
  }
end
# How would you return an array of all of the pokemon's names?
def all_names (pokemon)
  pokemon.map do |char_info|
    char_info[:name]
  end
end

# How would you determine whether or not the pokemon array contained any pokemon with a weight greater than 60?
def heavy_weight (pokemon)
  pokemon.any? { |char_info| char_info[:weight] > 60  }
end
#  whatever method you use should return true if there are any such pokemon, false if not.
