library(reticulate)
library(tidyverse)
#import seaborn as sns
sns<-import("seaborn")
#import matplotlib.pyplot as plt
plt<-import("matplotlib.pyplot")

# ## The Data
# 
# The data set that we’ll be working with contains data about various characteristics of small animals from an ecological study.
# * each row is an inidvidual animal trapped by field scientists
# * each column has data about the trapped animals  like species, sex and weight. 

# ### Loading the data

surveys <- read_csv('data/complete_surveys.csv')


# ### Scatterplot
# 
# To make a scatterplot, use `replot` and specify what dataset 
#you're using (like with `distplot`) 
#and what variables you want to plot on the `x` and `y` axes.

#sns.relplot(data=surveys,
sns$relplot(data = surveys,
            x="weight", 
            y="hindfoot_length", 
            alpha = 0.1, 
            hue = "species_id")
plt$show()
