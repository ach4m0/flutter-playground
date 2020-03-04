class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
      if (reverseMap == null) {
          reverseMap = map.map((k, v) => new MapEntry(v, k));
      }
      return reverseMap;
  }
}

String queryCharactersAndEpisodes = """
  query GetCharactersAndEpisodes {
    characters {
      results {
        name
        status
        image
      }
    }
  
    episodes(page: 1){
      info {
        count
      }
      results {
        id
        name
        air_date
        episode
      }
    }
  }
""";