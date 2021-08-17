library("jsonlite")
library("reader")

json_data <- fromJSON("db/Mock_DESEQ2_table_Blood_forJSON.json")

download_file_name <- "tmp_file"

# plumber.R
# Placeholder until the actual code is written.
# Source https://github.com/rstudio/plumber/

#* Echo back the input
#* @serializer contentType list(type="text/html")
#* @get /ping
function() {
  "pong"
}





#* Return the TPM plot of gene in specific disease vs normal GTEx tissue
#* @serializer png
#* @param ensemblId The target id
#* @param efoId  The disease  id
#* @get /tpm/gene-disease-gtex/plot 
function(ensemblId, efoId) {
  rand <- rnorm(100)
  hist(rand)
}



#* Return the TPM table’s data for plot of gene in specific disease vs normal GTEx tissue and in json format
#* @serializer json
#* @param ensemblId The target id
#* @param efoId  The disease  id
#* @get /tpm/gene-disease-gtex/jsonl
function(res,ensemblId, efoId) {
  
  # This header is a convention that instructs browsers to present the response
  # as a download named filename rather than trying to render it inline.
  attachmentString = paste0("attachment; filename=", paste(download_file_name,".json",sep = ""))
  
  res$setHeader("Content-Disposition", attachmentString)
  
  json_data
}




#* Return the TPM table’s data for plot of gene in specific disease vs normal GTEx tissue and in csv format
#* @serializer csv
#* @param ensemblId The target id
#* @param efoId  The disease  id
#* @get /tpm/gene-disease-gtex/csv
function(res, ensemblId, efoId) {
  
  # This header is a convention that instructs browsers to present the response
  # as a download named filename rather than trying to render it inline.
  attachmentString = paste0("attachment; filename=", paste(download_file_name,".csv",sep = ""))
  
  res$setHeader("Content-Disposition", attachmentString)
  
  json_data
}



#* Return the TPM table’s data for plot of gene in specific disease vs normal GTEx tissue and in tsv format
#* @serializer tsv
#* @param ensemblId The target id
#* @param efoId  The disease  id
#* @get /tpm/gene-disease-gtex/tsv
function(res,ensemblId, efoId) {
  
  # This header is a convention that instructs browsers to present the response
  # as a download named filename rather than trying to render it inline.
  attachmentString = paste0("attachment; filename=", paste(download_file_name,".tsv",sep = ""))
  
  res$setHeader("Content-Disposition", attachmentString)
  
  json_data
}



#* Return the TPM plot of gene across all cancers
#* @serializer png
#* @param ensemblId The target id
#* @get /tpm/gene-all-cancer/plot
function(ensemblId) {
  rand <- rnorm(100)
  hist(rand)
}



#* Return the TPM table’s data for plot of gene across all cancers in json format
#* @serializer json
#* @param ensemblId The target id
#* @get /tpm/gene-all-cancer/jsonl
function(res,ensemblId) {
  
  # This header is a convention that instructs browsers to present the response
  # as a download named filename rather than trying to render it inline.
  attachmentString = paste0("attachment; filename=", paste(download_file_name,".json",sep = ""))
  
  res$setHeader("Content-Disposition", attachmentString)
  
  json_data
}



#* Return the TPM table’s data for plot of gene across all cancers in csv format
#* @serializer csv
#* @param ensemblId The target id
#* @get /tpm/gene-all-cancer/csv
function(res,ensemblId) {
  
  # This header is a convention that instructs browsers to present the response
  # as a download named filename rather than trying to render it inline.
  attachmentString = paste0("attachment; filename=", paste(download_file_name,".csv",sep = ""))
  
  res$setHeader("Content-Disposition", attachmentString)
  
  json_data
}



#* Return the TPM table’s data for plot of gene across all cancers in tsv format
#* @serializer tsv
#* @param ensemblId The target id
#* @get /tpm/gene-all-cancer/tsv
function(res,ensemblId) {
  
  # This header is a convention that instructs browsers to present the response
  # as a download named filename rather than trying to render it inline.
  attachmentString = paste0("attachment; filename=", paste(download_file_name,".tsv",sep = ""))
  
  res$setHeader("Content-Disposition", attachmentString)
  
  json_data

}




