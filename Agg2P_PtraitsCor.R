cat("\f") # clean the console
rm(list = ls()) # clean the environment

library(readxl)
library(tidyr)
library(dplyr)
library(caTools)
library("ggpubr")
library("writexl")

data <- read_excel("ProjectData.xlsx")


S2B = cor(data$Agg2P, data$Agg2P)
S2C = cor(data$Agg2P, data$Trust)
S2D = cor(data$Agg2P, data$Predict)
S2E = cor(data$Agg2P, data$Gentle)

S3C = cor(data$Trust, data$Trust)
S3D = cor(data$Trust, data$Predict)
S3E = cor(data$Trust, data$Gentle)

S4D = cor(data$Predict, data$Predict)
S4E = cor(data$Predict, data$Gentle)

S5E = cor(data$Gentle, data$Gentle)

df <- data.frame( "Correlation Table" = c("Y1 (Aggressive to People)", 
                                          "X1 (Trusting)", "X2 (Predictable)",
                                          "X3 (Gentle)"),
                  "Y1 (Aggresive to People)" = c(S2B, S2C, S2D, S2E),
                  "X1 (Trusting)" = c("", S3C, S3D, S3E),
                  "X2 (Predictable)" = c("", "", S4D, S4E),
                  "X3 (Gentle)" = c("", "", "", S5E))

write_xlsx(df, "C:/Users/Elizabeth/Documents/Fall 2023/STAT 383/STAT Project/Some helpful codes-20231203/Agg2P_PtraitsCor.xlsx")