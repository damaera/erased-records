type t = ReverseProject | Vamaera | SailStory | Erased | Craftuner

let toName = t =>
  switch t {
  | ReverseProject => "Reverse Project"
  | Vamaera => "Vamaera"
  | SailStory => "SailStory"
  | Erased => "ERASED"
  | Craftuner => "Vamaera (crafTUNER)"
  }

let toSlug = t =>
  switch t {
  | ReverseProject => "reverse-project"
  | Vamaera => "vamaera"
  | SailStory => "sailstory"
  | Erased => "erased"
  | Craftuner => "vamaera"
  }

type linkT =
  | Website(string)
  | Facebook(string)
  | Twitter(string)
  | Instagram(string)
  | Youtube(string)
  | Spotify(string)
  | SoundCloud(string)

let toLinks = t =>
  switch t {
  | ReverseProject => [Website("https://www.reverse-project.com"), Facebook("ReverseProject00")]
  | Vamaera => [Facebook("vamaera")]
  | SailStory => []
  | Erased => []
  | Craftuner => []
  }

module Featured = {
  type t = Aika | Mayuko | Giita | Taobien | HatsuneMiku | Djalto | LeaAnsella | Est | Friday

  let toName = t =>
    switch t {
    | Aika => "A I K A"
    | Mayuko => "Mayuko"
    | Giita => "Giita"
    | Taobien => "Taobien"
    | HatsuneMiku => "Hatsune Miku"
    | Djalto => "djalto"
    | LeaAnsella => "Lea Ansella"
    | Est => "Est"
    | Friday => "Friday"
    }

  let toLinks = t =>
    switch t {
    | Aika => [Youtube("UCNyD7SbRI6H7N9JbSpiJqRw")]
    | Mayuko => [Youtube("UC7LoZBVP_yNftfi3WhCMZag")]
    | Giita => [Youtube("UC-PAkaHtXJVlaCFRwaQ0ggw")]
    | Taobien => [Youtube("UCqPj3ahTrs-I1Z20z-NAG-g")]
    | HatsuneMiku => [Website("https://en.wikipedia.org/wiki/Hatsune_Miku")]
    | Djalto => [Youtube("UCOL5JgLp7ITiThcG76dziOQ")]
    | LeaAnsella => [Youtube("UCUJLItcZUaHF6JpI4qS7r9Q")]
    | Est => [SoundCloud("estdechu")]
    | Friday => [SoundCloud("moonjellyfriday")]
    }
}
