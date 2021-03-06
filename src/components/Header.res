%%raw(`import styles from "./Header.module.css"`)
@val external styles: {..} = "styles"

type routeT = {
  text: string,
  route: string,
}
let routes = [
  {
    text: "Home",
    route: "/",
  },
  {
    text: "Releases",
    route: "/releases",
  },
  {
    text: "Artists",
    route: "/artists",
  },
  {
    text: "Contact",
    route: "/contact",
  },
]

@react.component
let make = () => {
  let router = Next.Router.useRouter()

  let renderRoutes =
    routes
    ->Belt.Array.map(item =>
      <Next.Link href={item.route} key={item.route}>
        <a>
          <div
            className={styles["menu-item"] ++
            " mono " ++ (item.route == router.pathname ? "active" : "")}>
            {item.route == router.pathname
              ? <b> <u> {item.text->React.string} </u> </b>
              : <span> {item.text->React.string} </span>}
          </div>
        </a>
      </Next.Link>
    )
    ->React.array

  <div className={styles["wrapper"]}>
    <div className={styles["logo-wrapper"]}>
      <Next.Link href={`/`}>
        <a>
          <img src="/erased-records-logo.svg" alt="Erased Records logo" width="60" height="60" />
        </a>
      </Next.Link>
      <h2 className={styles["text"]}>
        <Next.Link href={`/`}> <a> {" Erased Records "->React.string} </a> </Next.Link>
      </h2>
    </div>
    <nav className={styles["menu"]}> {renderRoutes} </nav>
  </div>
}
