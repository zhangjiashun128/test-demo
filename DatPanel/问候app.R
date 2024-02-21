library(shiny)
ui <- fluidPage(
  textInput("name", "请输入您的姓名："),
  textOutput("greeting")
)
server <- function(input, output, session){
    output$greeting = renderText({
      paste0("您好 ", input$name, "！")})
}
shinyApp(ui = ui, server = server)