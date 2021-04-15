%%raw(`import styles from "./Page.module.css"`)
@val external styles: {..} = "styles"

let defaultTitle = `Erased Records — Beyond music, create a world`
let defaultDescription = "Every song in Erased records has deep story behind it, Create a world through music"
let defaultImage = "/erased-records-meta.png"

@react.component
let make = (
  ~children,
  ~title=defaultTitle,
  ~description=defaultDescription,
  ~image=defaultImage,
) => {
  let thisYear = Js.Date.make()->Js.Date.getFullYear->int_of_float->string_of_int

  <div className={styles["wrapper"]}>
    <Next.Head>
      <title> {title->React.string} </title>
      <meta name="title" content=title />
      <meta name="description" content=description />
      // facebook
      <meta property="og:type" content="website" />
      <meta property="og:url" content="https://erasedrecords.com" />
      <meta property="og:title" content=title />
      <meta property="og:description" content=description />
      <meta property="og:image" content=image />
      // twitter
      <meta property="twitter:card" content="summary_large_image" />
      <meta property="twitter:url" content="https://erasedrecords.com" />
      <meta property="twitter:title" content=title />
      <meta property="twitter:description" content=description />
      <meta property="twitter:image" content=image />
      // favicon
      <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png" />
      <link rel="icon" sizes="32x32" href="/favicon-32x32.png" />
      <link rel="icon" sizes="16x16" href="/favicon-16x16.png" />
      <link rel="manifest" href="/site.webmanifest" />
    </Next.Head>
    <Header />
    {children}
    <div className={styles["footer"]}> {`© ${thisYear} - Erased Records`->React.string} </div>
  </div>
}
