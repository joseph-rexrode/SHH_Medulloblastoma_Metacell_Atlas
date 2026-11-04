library(Seurat)
library(dplyr)
library(here)
library(stringr)
library(data.table)
library(ggplot2)
library(harmony)
library(SingleCellExperiment)
library(celda)
library(tools)
library(scuttle)
library(SingleR)
library(org.Hs.eg.db)
library(knitr)

options(stringsAsFactors=FALSE)

# Global chunk options for all plots
knitr::opts_chunk$set(
  fig.width = 10,        # Set the width of the figures (in inches)
  fig.height = 10,       # Set the height of the figures (in inches)
  out.width = "100%",    # Make the figure occupy 100% of the page width
  dpi = 300,             # Set the resolution to 300 DPI for high-quality output
  echo = FALSE, 
  message = FALSE,       # Suppress messages
  warning = FALSE,       # Suppress warnings
  cache = TRUE,
  fig.retina = 2         # Set high DPI support for HTML (Retina displays)
)

mainDir <- here("Ghasemi_analysis", "results", "sample_results")
dataPath <- here("Ghasemi_analysis", "data")