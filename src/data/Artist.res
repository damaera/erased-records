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
let fromSlug = t =>
  switch t {
  | "reverse-project" => Some(ReverseProject)
  | "vamaera" => Some(Vamaera)
  | "sailstory" => Some(SailStory)
  | "erased" => Some(Erased)
  | _ => None
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
  | ReverseProject => [
      Spotify("0mRlrrhtRm6hUDXwcEkPr4"),
      Youtube("UCoGRDkYKjgvbx_tXn9npPMA"),
      Website("https://www.reverse-project.com"),
      Facebook("ReverseProject00"),
    ]
  | Vamaera => [
      Spotify("6Rvh2MfORbZ80GDUfqjLRY"),
      Youtube("UC7-IzVFpYk8ckbKHu_89QPw"),
      Facebook("vamaera"),
    ]
  | SailStory => [Spotify("1mB6ELrIfbMFiSKvYdIUOP"), Youtube("UC41zSm5CajGPcj1B9JXGIzw")]
  | Erased => [Spotify("1e8RkloxtkrsFR3vIOG4Ki"), Youtube("UCgSCfQLsA7NEdiM6RTxhT4Q")]
  | Craftuner => [Spotify("")]
  }

let all = [ReverseProject, Vamaera, SailStory, Erased]

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
