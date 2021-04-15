%%raw(`import styles from "./HomePage.module.css"`)
@val external styles: {..} = "styles"

@react.component
let make = () => {
  <Page>
    <div className={styles["content"]} style={ReactDOM.Style.make(~padding="10px", ())}>
      <h2 className="mono"> {"Pls, don't hesitate to contact me"->React.string} </h2>
      <p>
        {"Actually, All artists is just one person (Era) who wants to make music with different genre.
        So i made different artists under 1 umbrella (Erased Records).
        "->React.string}
      </p>
      <p>
        {"We not only create music, but create a world inside it. So, if you want to create a world with me,
        Let's talk about \"that\" world together and make it happen"->React.string}
      </p>
      <p>
        {"Or, Wanna collab? Want me to make some music for you? We can talk about that too!"->React.string}
      </p>
      <p> {"I'm available at:"->React.string} </p>
      <div>
        <a href={`https://facebook.com/damaera`}>
          <button className={styles["button"]}> {"Facebook"->React.string} </button>
        </a>
        <a href={`https://twitter.com/vamaera`}>
          <button className={styles["button"]}> {"Twitter"->React.string} </button>
        </a>
        <a href={`mailto:damaera@live.com`}>
          <button className={styles["button"]}> {"Email"->React.string} </button>
        </a>
      </div>
    </div>
  </Page>
}
