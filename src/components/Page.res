%%raw(`import styles from "./Page.module.css"`)
@val external styles: {..} = "styles"

@react.component
let make = (~children) => {
  let thisYear = Js.Date.make()->Js.Date.getFullYear->int_of_float->string_of_int

  <div className={styles["wrapper"]}>
    <Header />
    {children}
    <div className={styles["footer"]}> {`© ${thisYear} - Erased Records`->React.string} </div>
  </div>
}
