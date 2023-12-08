cat("\f") # clean the console
rm(list = ls()) # clean the environment

library(readxl)
library(tidyr)
library(dplyr)
library(caTools)

data <- read_excel("ProjectData.xlsx")

# Friendly to Other Cats

  # Friendly to Other Cats & negative traits
  FyCA <- lm(FriendC ~ Sus + Anx + Sol, data = data)
  summary(FyCA)

    RdL = resid(FyCA)
    plot(RdL)
    abline(0,0)

  # Friendly to Other Cats & positive traits
  FyCB <- lm(FriendC ~ Trust + SelfA + Affec, data = data)
  summary(FyCB)
  
    RdL = resid(FyCB)
    plot(RdL)
    abline(0,0)
    
# Friendly to People
  
  # Friendly to People & negative traits
  FyPA <- lm(FriendP ~ Sus + Anx + Sol, data = data)
  summary(FyPA)
  
    #produce residual vs. fitted plot
    plot(fitted(FyPA), resid(FyPA))
    abline(0,0)
  
  # Friendly to People & positive traits
  FyPB <- lm(FriendP ~ Trust + SelfA + Affec, data = data)
  summary(FyPB)

    #produce residual vs. fitted plot
    plot(fitted(FyPB), resid(FyPB))
    abline(0,0)
  
# Fearfull of Other Cats
  
  # Fearfull of Other Cats & negative traits
  FlCA <- lm(FearC ~ Sus + Anx + Sol, data = data)
  summary(FlCA)

  # Fearfull of Other Cats & positive traits
  FlCB <- lm(FearC ~ Trust + SelfA + Affec, data = data)
  summary(FlCB)

  
# Fearfull of People
  
  # Fearfull of People & negative traits
  FlPA <- lm(FearP ~ Sus + Anx + Sol, data = data)
  summary(FlPA)
  
  # Fearfull of People & positive traits
  FlPB <- lm(FearP ~ Trust + SelfA + Affec, data = data)
  summary(FlPB)
  
  
# Aggressive to Other Cats
  
  # Aggressive to Other Cats & negative traits
  AgCA <- lm(Agg2C ~ Sus + Anx + Sol, data = data)
  summary(AgCA)
  
  # Aggressive to Other Cats & positive traits
  AgCB <- lm(Agg2C ~ Sus + Anx + Sol, data = data)
  summary(AgCB)
  
  
# Aggressive to People
  
  # Aggressive to People & negative traits
  AgPA <- lm(Agg2P ~ Sus + Anx + Sol, data = data)
  summary(AgPB)
  
  # Aggressive to People & positive traits
  AgPB <- lm(Agg2P ~ Sus + Anx + Sol, data = data)
  summary(AgPB)