shinyUI(
  f7Page(
    f7TabLayout(
      f7Tabs(
        f7Tab(
          title = "Main",
          tabName = "main",
          active = TRUE
        ),
        f7Tab(
          title = "Workouts",
          tabName = "workouts",
          active = TRUE
        ),
        f7Tab(
          title = "Excer",
          tabName = "excer",
          active = TRUE,
          actionButton(
            "add_excer",
            "create new"
          ),
          tags$div(
            id = "list_excer"
          )
        ),
        f7Tab(
          title =  "New_Excer",
          tabName = "new_excer",
          active = TRUE,
          f7Text(
            inputId = "new_excer_name",
            label = "Name of exercise"),
          f7TextArea(
            inputId = "new_excer_notes",
            label = "Notes"
          ),
          f7Text(
            inputId = "new_excer_url",
            label = "URL of image"
          ),
          f7Button(
            inputId = "new_excer_save",
            label = "Save"
          )
        ),
        .items = NULL,
        id=NULL,
        swipeable = FALSE,
        animated = TRUE,
        style = c("toolbar", "segmented", "strong")
      ),
      navbar = f7Navbar(
        title = "Shiny Fitness"
      ),
      panels = NULL,
      appbar = NULL,
      filled = FALSE
      
      
    )
  )
)
  