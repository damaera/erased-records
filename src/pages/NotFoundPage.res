%%raw(`import styles from "./HomePage.module.css"`)
@val external styles: {..} = "styles"

@react.component
let make = () => {
  <Page>
    <div className={styles["content"]}>
      <h2 className="mono"> {"404: Oh no! Void"->React.string} </h2>
      <p> {"While lost, please listen this song about a girl who list in space"->React.string} </p>
      <div className="wrap-center">
        {switch Release.latest->Belt.Array.getBy(track => track.title == "Voidverse") {
        | Some(track) => <TrackCard track />
        | None => React.null
        }}
      </div>
      <Next.Link href="/releases">
        <a>
          <button className={styles["button"]}>
            {"Wanna hear other song? Go to all Releases"->React.string}
          </button>
        </a>
      </Next.Link>
    </div>
  </Page>
}
