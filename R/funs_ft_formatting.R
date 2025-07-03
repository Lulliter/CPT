# ------- Flextable settings
# Flextable OK with both html & word
# FT chetsheet https://ardata-fr.github.io/flextable-book/static/pdf/cheat_sheet_flextable.pdf

# ------- 'Google Fonts' is a popular library of free web fonts that can be easily integrated in flextable with 
# function gdtools::register_gfont()

# ------- FLEXTABLE 
## --- OVERRIDES DEFAULT SETTING
set_flextable_defaults(line_spacing = 1,
                       #scroll =           # NULL or a list if you want to add a scroll-box
                       cs.family = "Open Sans" ,      # optional and only for Word
                       font.family = "Open Sans",     #"Cambria", #"Arial",
                       font.size = 9, 
                       theme_fun = theme_box, #theme_vanilla,
                       #padding = 1,
                       padding.bottom = 1,
                       padding.top = 1,
                       padding.left = 1.5,
                       padding.right = 1,
                       background.color = "#F2F2F2",
                       border.color =   "#A6A6A6" ,
                       border.width = .5,
                       table.layout = "autofit" # or fixed 
)


brdr_in <- fp_border_default(color = "#4c4c4c", width = 0.25)

# ------ USE with specific ft  
# #---- 1/2 set it up 
#       #[da completare...]
#       set_table_properties(
#         # ft,
#         layout = "fixed",
#         width = 0,
#         align = "center",
#         
#         opts_html = list(
#           scroll = list( height = "500px", freeze_first_column = TRUE)
#         )#,
#         # 
#         # opts_word = list(
#         #   split = ...,
#         #   keep_with_next = ...,
#         # ),
#         # 
#         # opts_pdf = list(),
#         # word_title = NULL,
#         # word_description = NULL
#       )
# 
# #---- 2/2 Add to specific ft as  %>% f_ft_properties()
# f_ft_properties <- function (ft) {
#   set_table_properties(ft, width = 1, layout = "autofit") %>% 
#   ft %>% fit_to_width(max_width = 8)
# }
