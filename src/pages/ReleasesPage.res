@react.component
let make = () => {
  let (filterGenreState, setFilterState) = React.useState(_ => None)

  let releases = switch filterGenreState {
  | None => Release.latest
  | Some(genre) => Release.filterByGenre(genre)
  }

  <Page>
    <br />
    <h1 className="tac mono">
      {(switch filterGenreState {
      | None => "All"
      | Some(genre) => genre->Genre.toString
      } ++ " Releases")->React.string}
    </h1>
    <div className="wrap-center">
      <select
        className="select"
        onChange={e => {
          let target = e->ReactEvent.Form.target
          let val = switch target["value"] {
          | "All" => None
          | str => str->Genre.fromString->Some
          }
          setFilterState(_ => val)
        }}>
        <option value={"All"}> {"Select genre"->React.string} </option>
        <option value={"All"}> {"All"->React.string} </option>
        {Genre.all
        ->Js.Array2.map(g =>
          <option value={g->Genre.toString}> {g->Genre.toString->React.string} </option>
        )
        ->React.array}
      </select>
    </div>
    <br />
    <TrackCard.Wrapper>
      {releases
      ->Belt.Array.map(track => {
        //
        <TrackCard key={track.title} track />
      })
      ->React.array}
    </TrackCard.Wrapper>
  </Page>
}
