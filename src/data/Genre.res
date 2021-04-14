type t = Rock | Metal | Pop | Ballad | Electronic | Jazz | Vocaloid

let toString = t =>
  switch t {
  | Rock => "Rock"
  | Metal => "Metal"
  | Pop => "Pop"
  | Ballad => "Ballad"
  | Electronic => "Electronic"
  | Jazz => "Jazz"
  | Vocaloid => "Vocaloid"
  }

let fromString = t =>
  switch t {
  | "Rock" => Rock
  | "Metal" => Metal
  | "Pop" => Pop
  | "Ballad" => Ballad
  | "Electronic" => Electronic
  | "Jazz" => Jazz
  | "Vocaloid" => Vocaloid
  | _ => Pop
  }

let all = [Rock, Metal, Pop, Ballad, Electronic, Jazz, Vocaloid]
