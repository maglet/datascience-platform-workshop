library(reticulate)
library(tidyverse)
#import seaborn as sns
sns<-import("seaborn")
#import matplotlib.pyplot as plt
plt<-import("matplotlib.pyplot")

# ### Loading the data

surveys <- read_csv('data/complete_surveys.csv')

# ### Scatterplot

#sns.relplot(data=surveys,
sns$relplot(data = surveys,
            x="weight", 
            y="hindfoot_length", 
            alpha = 0.1, 
            hue = "species_id")
plt$show()
