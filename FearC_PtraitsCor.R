cat("\f") # clean the console
rm(list = ls()) # clean the environment

library(readxl)
library(tidyr)
library(dplyr)
library(caTools)
library("ggpubr")
library("writexl")

data <- read_excel("ProjectData.xlsx")


S2B = cor(data$FearC, data$FearC)
S2C = cor(data$FearC, data$Trust)
S2D = cor(data$FearC, data$SelfA)
S2E = cor(data$FearC, data$Affec)

S3C = cor(data$Trust, data$Trust)
S3D = cor(data$Trust, data$SelfA)
S3E = cor(data$Trust, data$Affec)

S4D = cor(data$SelfA, data$SelfA)
S4E = cor(data$SelfA, data$Affec)

S5E = cor(data$Affec, data$Affec)

df <- data.frame( "Correlation Table" = c("Y1 (Fearful of Other Cats)", 
                                          "X1 (Trusting)", "X2 (Self Assured)",
                                          "X3 (Affectionate)"),
                  "Y1 (Fearful of Other Cats)" = c(S2B, S2C, S2D, S2E),
                  "X1 (Trusting)" = c("", S3C, S3D, S3E),
                  "X2 (Self Assured)" = c("", "", S4D, S4E),
                  "X3 (Affectionate)" = c("", "", "", S5E))

write_xlsx(df, "C:/Users/Elizabeth/Documents/Fall 2023/STAT 383/STAT Project/Some helpful codes-20231203/FearC_PtraitsCor.xlsx")