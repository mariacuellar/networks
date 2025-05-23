# Libraries
library(igraph)
library(networkD3)
library(tidyverse)

# create a dataset:
data <- data_frame(
  from=c("M.Cuellar", "M.Cuellar1", "B", "D", "C", "D", "E", "B", "C", "D", "K", "A", "M"),
  to=c("A.Luby", "E", "F", "A", "C", "A", "B", "Z", "A", "C", "A", "B", "K")
)

# Plot
p <- simpleNetwork(data, height="100px", width="100px",        
                   Source = 1,                 # column number of source
                   Target = 2,                 # column number of target
                   linkDistance = 10,          # distance between node. Increase this value to have more space between nodes
                   charge = -900,                # numeric value indicating either the strength of the node repulsion (negative value) or attraction (positive value)
                   fontSize = 14,               # size of the node names
                   fontFamily = "serif",       # font og node names
                   linkColour = "#666",        # colour of edges, MUST be a common colour for the whole graph
                   nodeColour = "#69b3a2",     # colour of nodes, MUST be a common colour for the whole graph
                   opacity = 0.9,              # opacity of nodes. 0=transparent. 1=no transparency
                   zoom = T                    # Can you zoom on the figure?
)

p

# save the widget
library(htmlwidgets)
saveWidget(p, "/Users/mariacuellar/Downloads/test1.html")
