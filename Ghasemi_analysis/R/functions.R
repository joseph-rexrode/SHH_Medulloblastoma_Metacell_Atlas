

extractClusterMatrix <- function(inData, id = NULL) {
  
  # use active identities by default
  if (is.null(id)) {
    ctypes <- Idents(inData)
  } else {
    ctypes <- inData[[id]][,1]
  }
  counts <- GetAssayData(
    inData,
    layer = "counts"
  )
  resTable <- NULL
  for (k in sort(unique(ctypes))) {
    cNames <- names(ctypes[ctypes == k])
    print(
      paste(
        "cluster:", k,
        "num cells:", length(cNames)
      )
    )
    vals <- Matrix::rowSums(
      counts[, cNames, drop = FALSE]
    )
    resTable <- cbind(resTable, vals)
  }
  colnames(resTable) <- paste0(
    "c",
    sort(unique(ctypes))
  )
  rownames(resTable) <- rownames(counts)
  return(resTable)
}
