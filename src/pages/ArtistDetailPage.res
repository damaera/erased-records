let getStaticPaths: Next.GetStaticPaths.t<{
  "artist": string,
}> = () => {
  open Next.GetStaticPaths
  {
    paths: Artist.all->Belt.Array.map(artist => {params: {"artist": artist->Artist.toSlug}}),
    fallback: false,
  }->Js.Promise.resolve
}

let getStaticProps: Next.GetStaticProps.t<{"artistSlug": string}, {"artist": string}> = context => {
  let artistSlug = context.params["artist"]
  {"props": {"artistSlug": artistSlug}}->Js.Promise.resolve
}

@react.component
let make = (~artistSlug) => {
  let releases = switch artistSlug {
  | None => Release.latest
  | Some(artistSlug) =>
    switch artistSlug->Artist.fromSlug {
    | Some(artist) => artist->Release.filterByArtist
    | None => Release.latest
    }
  }
  <Page>
    <br />
    <h1 className="tac mono"> {" Releases"->React.string} </h1>
    <br />
    <TrackCard.Wrapper>
      <div />
      {releases
      ->Belt.Array.map(track => {
        //
        <TrackCard key={track.title} track />
      })
      ->React.array}
    </TrackCard.Wrapper>
  </Page>
}
