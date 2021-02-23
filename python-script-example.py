# ### Loading libraries
# 
# To use the functions in `seaborn` and `pandas`, 
# run the following code to load these libraries with 
# aliases `sns` and `pd`. 

import seaborn as sns
import pandas as pd
import matplotlib.pyplot as plt

## The Data
 
# The data set that we’ll be working with contains data 
# about various characteristics of small animals from an ecological study.
# * each row is an inidvidual animal trapped by field scientists
# * each column has data about the trapped animals 
# like species, sex and weight. 

# ### Loading the data
# Use the `pandas` function `read_csv` to load the data. 

surveys = pd.read_csv('data/complete_surveys.csv')

# ### Scatterplot
# 
# To make a scatterplot, use `replot` and specify the dataset 
# and what variables you want to plot on the `x` and `y` axes.

sns.relplot(data=surveys,
            x="weight", 
            y="hindfoot_length", 
            alpha = 0.1, 
            hue = "species_id")

# display the plot in the 
plt.show()
