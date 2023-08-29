function(input, output, session){
  
  user <- reactiveValues(
    excers = list(
      bench = list(
        name = "Bench press",
        notes = "Bench press",
        image_url = "https://upload.wikimedia.org/wikipedia/commons/a/a8/Bench-press-1.png" 
      ),
      squat = list(
        name = "squat",
        notes = "przysiad przedni",
        image_url = "https://upload.wikimedia.org/wikipedia/commons/0/02/Front-squat-2-857x1024.png"
      )
    )
  )

  observe({
    purrr::map(
      .x = user$excers,
      .f = function(excer){
        insertUI(
          selector = "#list_excer",
          ui = tags$div(
            style = "
            background-color: white;
            padding: 5px 5px 5px 5px;
            margin: 10px 10px 10px 10px;
            max-width: 50%;
            color: black;
            ",
            tags$img(
              style = "width: 100%",
              src = excer$image_url
              ),
            tags$h2(excer$name),
            tags$p(excer$notes)
          )
        )
      }
    )
  })

}