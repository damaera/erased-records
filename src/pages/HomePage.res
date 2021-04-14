%%raw(`import styles from "./HomePage.module.css"`)
@val external styles: {..} = "styles"

@react.component
let make = () => {
  <Page>
    <div className="wrap-center">
      <div className="planets">
        //
        <img src="/planets.gif" width="400" height="400" />
      </div>
    </div>
    <div className={styles["content"]}>
      <h2 className="mono"> {"Beyond music, create a world"->React.string} </h2>
      <p>
        {"Every song in Erased records has deep story behind it,"->React.string}
        <br />
        {"Create a world through a song"->React.string}
      </p>
      <Next.Link href="/releases">
        <a> <button className={styles["button"]}> {"All Releases"->React.string} </button> </a>
      </Next.Link>
    </div>
  </Page>
}
