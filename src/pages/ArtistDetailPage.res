// let getStaticProps = () => {
//   // Call an external API endpoint to get posts
//   let artists = Artist.all

//   // By returning { props: { posts } }, the Blog component
//   // will receive `posts` as a prop at build time
//   return {
//     props: {
//       posts,
//     },
//   }
// }

@react.component
let make = () => {
  let router = Next.Router.useRouter()

  let artistSlug = router.query->Js.Dict.get("artist")
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
      {releases
      ->Belt.Array.map(track => {
        //
        <TrackCard key={track.title} track />
      })
      ->React.array}
    </TrackCard.Wrapper>
  </Page>
}
