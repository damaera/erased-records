%%raw(`import styles from "./TrackCard.module.css"`)
@val external styles: {..} = "styles"

@react.component
let make = (~track: Release.t) => {
  let {artist, feat, title, spotifyTrackId, youtubeId, type_, genres} = track

  let artists = switch feat {
  | [] =>
    <Next.Link href={`/a/${artist->Artist.toSlug}`}>
      <a> {artist->Artist.toName->React.string} </a>
    </Next.Link>
  | arr => <>
      <Next.Link href={`/a/${artist->Artist.toSlug}`}>
        <a className="link-underline"> {artist->Artist.toName->React.string} </a>
      </Next.Link>
      <span style={ReactDOM.Style.make(~opacity="0.5", ())}> {" feat. "->React.string} </span>
      {arr
      ->Js.Array2.map(feat =>
        <a
          target="_blank"
          href={switch (feat->Artist.Featured.toLinks)[0] {
          | Youtube(channel) => `https://www.youtube.com/channel/${channel}`
          | Website(str) => str
          | SoundCloud(username) => `https://soundcloud.com/${username}`
          | _ => ""
          }}
          className="link-underline">
          {feat->Artist.Featured.toName->React.string}
        </a>
      )
      ->React.array}
    </>
  }
  <div className={styles["container"]}>
    <div>
      {switch (spotifyTrackId, youtubeId) {
      | (Some(spotifyTrackId), Some(youtubeId)) =>
        <div className={styles["stack"]}>
          <iframe
            src={`https://open.spotify.com/embed/track/${spotifyTrackId}`} width="100%" height="80"
          />
          <iframe src={`https://www.youtube.com/embed/${youtubeId}`} width="100%" height="280" />
        </div>
      | (Some(spotifyTrackId), None) =>
        <iframe
          src={`https://open.spotify.com/embed/track/${spotifyTrackId}`} width="100%" height="360"
        />
      | (None, Some(youtubeId)) =>
        <iframe src={`https://www.youtube.com/embed/${youtubeId}`} width="100%" height="360" />
      | (None, None) => React.null
      }}
    </div>
    <div className={styles["content"]}>
      //
      <div className={styles["title"]}> {title->React.string} </div>
      <div className={styles["artist"]}> {artists} </div>
      <div className={styles["type"]}>
        <span>
          {switch type_ {
          | Cover => "cover"
          | Original => "original"
          }->React.string}
        </span>
        {genres
        ->Belt.Array.map(g => {
          <span> {g->Genre.toString->React.string} </span>
        })
        ->React.array}
      </div>
    </div>
  </div>
}

module Wrapper = {
  @react.component
  let make = (~children) => {
    <div className={styles["card-wrapper"]}> {children} </div>
  }
}
