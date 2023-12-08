cat("\f") # clean the console
rm(list = ls()) # clean the environment

library(readxl)
library(tidyr)
library(dplyr)
library(caTools)
library("ggpubr")
library("writexl")

data <- read_excel("ProjectData.xlsx")


S2B = cor(data$FriendC, data$FriendC)
S2C = cor(data$FriendC, data$Sus)
S2D = cor(data$FriendC, data$Anx)
S2E = cor(data$FriendC, data$Sol)

S3C = cor(data$Sus, data$Sus)
S3D = cor(data$Sus, data$Anx)
S3E = cor(data$Sus, data$Sol)

S4D = cor(data$Anx, data$Anx)
S4E = cor(data$Anx, data$Sol)

S5E = cor(data$Sol, data$Sol)

df <- data.frame( "Correlation Table" = c("Y1 (Friendly to Other Cats)", 
                                          "X1 (Suspicious)", "X2 (Anxious)",
                                          "X3 (Solitary)"),
                  "Y1 (Friendly to Other Cats)" = c(S2B, S2C, S2D, S2E),
                  "X1 (Suspicious)" = c("", S3C, S3D, S3E),
                  "X2 (Anxious)" = c("", "", S4D, S4E),
                  "X3 (Solitary)" = c("", "", "", S5E))

write_xlsx(df, "C:/Users/Elizabeth/Documents/Fall 2023/STAT 383/STAT Project/Some helpful codes-20231203/Friend2C_NtraitsCor.xlsx")