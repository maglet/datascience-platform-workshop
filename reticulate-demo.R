library(reticulate)


#import seaborn as sns
sns<-import("seaborn")
#import pandas as pd
pd<-import("pandas")
#import matplotlib.pyplot as plt
plt<-import("matplotlib.pyplot")

# ## The Data
# 
# The data set that we’ll be working with contains data about various characteristics of small animals from an ecological study.
# * each row is an inidvidual animal trapped by field scientists
# * each column has data about the trapped animals  like species, sex and weight. 

# ### Loading the data
# 
# Use the `pandas` function `read_csv` to load the data. 

# In[8]:

# surveys = pd.read_csv('data/complete_surveys.csv')
surveys <- pd$read_csv('data/complete_surveys.csv')


# ### Scatterplot
# 
# To make a scatterplot, use `replot` and specify what dataset you're using (like with `distplot`) and what variables you want to plot on the `x` and `y` axes.

# In[46]:


#sns.relplot(data=surveys,
sns$relplot
            x="weight", 
            y="hindfoot_length", 
            alpha = 0.1, 
            hue = "species_id")



print("I made a plot!")
