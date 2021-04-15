%%raw(`import styles from "./HomePage.module.css"`)
@val external styles: {..} = "styles"

@react.component
let make = () => {
  <Page>
    <div className="wrap-center">
      <div className={styles["planets"]}>
        //
        <video autoPlay=true loop=true>
          <source src="/planets.webm" type_="video/webm" />
          <source src="/planets.mp4" type_="video/mp4" />
        </video>
      </div>
    </div>
    <div className={styles["content"]}>
      <h2 className="mono"> {"Beyond music, create a world"->React.string} </h2>
      <p>
        {"Every song in Erased records has deep story behind it,"->React.string}
        <br />
        {"Create a world through music"->React.string}
      </p>
      <Next.Link href="/releases">
        <a> <button className={styles["button"]}> {"All Releases"->React.string} </button> </a>
      </Next.Link>
    </div>
  </Page>
}
