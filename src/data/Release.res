open Artist

type typeT = Original | Cover

type t = {
  artist: Artist.t,
  feat: array<Artist.Featured.t>,
  title: string,
  spotifyTrackId: option<string>,
  youtubeId: option<string>,
  type_: typeT,
  genres: array<Genre.t>,
  releasedAt: (int, int), // year month
}

let latest = [
  {
    artist: Erased,
    feat: [LeaAnsella],
    title: "Raise the Dead",
    spotifyTrackId: Some("1EhZQMkJUvFAamRYZv9wBj"),
    youtubeId: None,
    type_: Original,
    genres: [Metal, Rock],
    releasedAt: (2021, 2),
  },
  {
    artist: SailStory,
    feat: [Djalto],
    title: "Navigator",
    spotifyTrackId: Some("38ZODMXdmbRQpn6JHKpdk0"),
    youtubeId: Some("hm2tHkkHuKE"),
    type_: Original,
    genres: [Pop],
    releasedAt: (2021, 02),
  },
  {
    artist: Vamaera,
    feat: [Est],
    title: "Voidverse",
    spotifyTrackId: Some("0CgMxqVSF8kYGcmR6cF79j"),
    youtubeId: Some("oLeQ3Boei7c"),
    type_: Original,
    genres: [Electronic, Pop],
    releasedAt: (2020, 10),
  },
  {
    artist: Vamaera,
    feat: [HatsuneMiku],
    title: `U ’n I Verse`,
    spotifyTrackId: Some("7rnr4Y6Rn9rfbAkfl61sKU"),
    youtubeId: Some("fAZy2key4z8"),
    type_: Original,
    genres: [Electronic, Pop, Vocaloid],
    releasedAt: (2020, 08),
  },
  {
    artist: ReverseProject,
    feat: [Aika],
    title: "Koi wa Sensou",
    spotifyTrackId: Some("5MmGVOdCdTBfhBvWkTIFiv"),
    youtubeId: None,
    type_: Cover,
    genres: [Rock],
    releasedAt: (2020, 06),
  },
  {
    artist: ReverseProject,
    feat: [Giita],
    title: "Asu no Yozora Shoukaihan",
    spotifyTrackId: Some("6dyXAwdPCfrsW3hvfKIKQd"),
    youtubeId: None,
    type_: Cover,
    genres: [Rock],
    releasedAt: (2020, 06),
  },
  {
    artist: ReverseProject,
    feat: [Mayuko],
    title: "Leia",
    spotifyTrackId: Some("5H8qG4WNAjO2e4tqSW1I6h"),
    youtubeId: None,
    type_: Cover,
    genres: [Metal, Rock],
    releasedAt: (2020, 06),
  },
  {
    artist: ReverseProject,
    feat: [Giita],
    title: "Melt",
    spotifyTrackId: Some("4JxLMl2BGR3hAmEI44CXA5"),
    youtubeId: None,
    type_: Cover,
    genres: [Rock, Pop],
    releasedAt: (2020, 06),
  },
  {
    artist: ReverseProject,
    feat: [Mayuko],
    title: "Tell Your World",
    spotifyTrackId: Some("0vCteUWqEWqZP2JFWYw6oJ"),
    youtubeId: None,
    type_: Cover,
    genres: [Rock, Metal],
    releasedAt: (2020, 06),
  },
  {
    artist: ReverseProject,
    feat: [Aika],
    title: "Kuroneko",
    spotifyTrackId: Some("3HHOy2dHeJTDe7CXCKenvP"),
    youtubeId: None,
    type_: Cover,
    genres: [Ballad, Pop],
    releasedAt: (2020, 06),
  },
  {
    artist: ReverseProject,
    feat: [Aika],
    title: "Aegis",
    spotifyTrackId: Some("3hpsnxcE6CmMvqsK0l8FPn"),
    youtubeId: None,
    type_: Original,
    genres: [Rock],
    releasedAt: (2018, 06),
  },
  {
    artist: ReverseProject,
    feat: [Mayuko],
    title: "Merge",
    spotifyTrackId: Some("60roNTwN5Qi40Uu92joVfh"),
    youtubeId: None,
    type_: Original,
    genres: [Rock],
    releasedAt: (2018, 06),
  },
  {
    artist: ReverseProject,
    feat: [Giita],
    title: "Desolate",
    spotifyTrackId: Some("52hy0IohLZ9fdKHEbPEKNm"),
    youtubeId: None,
    type_: Original,
    genres: [Ballad],
    releasedAt: (2018, 06),
  },
  {
    artist: ReverseProject,
    feat: [Taobien],
    title: "Photon Monogatari",
    spotifyTrackId: Some("2r0BPXON3xjdG40HHhxgkP"),
    youtubeId: None,
    type_: Original,
    genres: [Pop],
    releasedAt: (2018, 06),
  },
  {
    artist: ReverseProject,
    feat: [Aika],
    title: "No-Cloning Theorem",
    spotifyTrackId: Some("5sI7cdBoOztldiphj6Pbxj"),
    youtubeId: None,
    type_: Original,
    genres: [Rock],
    releasedAt: (2018, 06),
  },
  {
    artist: ReverseProject,
    feat: [Giita],
    title: "Melancholy of the End of the Universe",
    spotifyTrackId: Some("3wbamF77g6kbJ0wVvn4SKk"),
    youtubeId: None,
    type_: Original,
    genres: [Ballad, Jazz],
    releasedAt: (2018, 06),
  },
  {
    artist: Craftuner,
    feat: [Mayuko],
    title: "Ravage",
    spotifyTrackId: Some("2qKtTTTe7VhL9xhrJ80tYC"),
    youtubeId: None,
    type_: Original,
    genres: [Rock],
    releasedAt: (2017, 06),
  },
  {
    artist: Craftuner,
    feat: [Friday],
    title: "Rocket Heart",
    spotifyTrackId: Some("5lkTkYOxXCQ8SzS2e4SlnS"),
    youtubeId: None,
    type_: Original,
    genres: [Electronic],
    releasedAt: (2016, 06),
  },
  {
    artist: Craftuner,
    feat: [HatsuneMiku],
    title: "Connect",
    spotifyTrackId: Some("6GAdwhHEoDiWk5ZlxidXLW"),
    youtubeId: None,
    type_: Original,
    genres: [Electronic, Vocaloid],
    releasedAt: (2015, 06),
  },
  {
    artist: Craftuner,
    feat: [HatsuneMiku],
    title: "Summer Day",
    spotifyTrackId: Some("3yZeuwBTZCHOEQcKv4iteX"),
    youtubeId: None,
    type_: Original,
    genres: [Electronic, Vocaloid],
    releasedAt: (2014, 06),
  },
]

let filterByArtist = (artist: Artist.t) => {
  latest->Js.Array2.filter(item => {
    item.artist == artist
  })
}

let filterByFeaturedArtist = (feat: Artist.Featured.t) => {
  latest->Js.Array2.filter(item => {
    item.feat->Js.Array2.some(i => i == feat)
  })
}

let filterByGenre = (genre: Genre.t) => {
  latest->Js.Array2.filter(item => {
    item.genres->Js.Array2.some(g => g == genre)
  })
}
