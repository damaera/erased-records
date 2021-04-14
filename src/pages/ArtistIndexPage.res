%%raw(`import styles from "./ArtistIndexPage.module.css"`)
@val external styles: {..} = "styles"

@react.component
let make = () => {
  <Page>
    <div>
      {Artist.all
      ->Belt.Array.map(artist => {
        <Next.Link href={`/a/${artist->Artist.toSlug}`}>
          <a>
            <div className={styles["container"]}>
              <h2 className={styles["title"] ++ " mono"}>
                {artist->Artist.toName->React.string}
              </h2>
              <div className={styles["link-wrapper"]}>
                {artist
                ->Artist.toLinks
                ->Belt.Array.map(link => {
                  switch link {
                  | Spotify(spotifyUrl) =>
                    <a href={`https://open.spotify.com/artist/${spotifyUrl}`}>
                      <div className={styles["link"]}> {"Spotify"->React.string} </div>
                    </a>
                  | Youtube(channel) =>
                    <a href={`https://youtube.com/channel/${channel}?sub_confirmation=1`}>
                      <div className={styles["link"]}> {"Youtube"->React.string} </div>
                    </a>
                  | Facebook(username) =>
                    <a href={`https://facebook.com/${username}`}>
                      <div className={styles["link"]}> {"Facebook"->React.string} </div>
                    </a>
                  | _ => React.null
                  }
                })
                ->React.array}
              </div>
            </div>
          </a>
        </Next.Link>
      })
      ->React.array}
      <Next.Link href={`/contact`}>
        <a>
          <div className={styles["container"]}>
            <h2 className={styles["title"]}> {"Wanna join?"->React.string} </h2>
          </div>
        </a>
      </Next.Link>
    </div>
  </Page>
}
