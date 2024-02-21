library(shiny)
# 定义UI
ui <- fluidPage(
  titlePanel("常用控件"),
  fluidRow(
    column(3, h3("按钮"), #
           actionButton("action", "点击"),
           br(), br(),
           submitButton("提交")),
    column(3, h3("单选框"),
           checkboxInput("checkbox", "选项A", value = TRUE)),
    column(3,
           checkboxGroupInput("checkGroup", h3("多选框"),
                              choices = list("选项1" = 1, "选项2" = 2, "选项3" = 3),
                              selected = 1)),
    column(3,
           dateInput("date", h3("输入日期"), value ="2021-01-01"))), 
  fluidRow(
    column(3, dateRangeInput("dates", h3("日期范围"))),
    column(3, fileInput("file", h3("文件输入"))),
    column(3, h3("帮助文本"),
           helpText("注：帮助文本不是真正的部件，但提供了一种",
                    "易于实现的方式为其他部件添加文本.")),
    column(3, numericInput("num", h3("输入数值"), value = 1))),
  fluidRow(
    column(3, radioButtons("radio", h3("单选按钮"),
                           choices = list("选项1" = 1, "选项2" = 2,
                                          "选项3" = 3), selected = 1)),
    column(3, selectInput("select", h3("下拉选择"),
                          choices = list("选项1" = 1, "选项2" = 2,
                                         "选项3" = 3), selected = 1)),
    column(3, sliderInput("slider1", h3("滑动条"),
                          min = 0, max = 100, value = 50),
           sliderInput("slider2", "",
                       min = 0, max = 100, value = c(25, 75))),
    column(3, textInput("text", h3("文本输入"), value = "输入文本...")))
)
# 定义server逻辑：空白逻辑是 app 对控件的输入什么都不做，不产生任何输出
server <- function(input, output){}
# 运行 app
shinyApp(ui = ui, server = server)
