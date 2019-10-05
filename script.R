library(tidyverse)
library(readxl)

data <- read_excel("data.xlsx") 
data$Fitness <- as.numeric(as.character(data$Fitness))

# colnames(data)
# [1] "Year"               "ID"                 "Sex"                "Group_ID_s"         "Group_ID_w"        
# [6] "Group_size"         "Male/female"        "Group_organization" "X_winter"           "Y_winter"          
# [11] "X_spring"           "Y_spring"           "XKCwinter"          "YKC_winter"         "XKCspring"         
# [16] "YKCspring"          "Spatial_Stability"  "Fitness"            "f_Loss"             "f_Death"           
# [21] "f_Leave"            "f_Gains"            "m_Loss"             "m_Death"            "m_Leave"           
# [26] "m_Gains"            "f_Net_Changes"      "m_Net_Changes"      "new_female"         "new_male"          
# [31] "new"                "lost_female"        "lost_male"          "lost"               "Total"             
# [36] "s_female"           "s_male"             "total_same"         "GI"                 "GI_f"              
# [41] "GI_m" 

ggplot(data, aes(GI_m, Fitness)) +
  geom_point(aes(col= Sex, shape= Sex))

