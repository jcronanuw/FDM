
setwd("C:/Users/jcronan/Documents/GitHub/FDM/")
input_file <- read.table("input_file.csv", header=TRUE, 
                     sep=",", na.strings="NA", dec=".", strip.white=TRUE)


setwd("C:/Users/jcronan/Documents/GitHub/FDM/")
input_file_3 <- read.table("input_file_3.csv", header=TRUE, 
                         sep=",", na.strings="NA", dec=".", strip.white=TRUE)



aa <- vector()
system.time({
  for(i in 1:100000)
  {
    aa[i] <- 1 + min(0,aa[i-1]) 
  }
})

dt <- Sys.Date()
tm <- format(Sys.time(), format = "%H.%M.%S", 
             tz = "", usetz = FALSE)

write.csv(aa, file = paste("output_file_on_",dt,"_",tm,".csv",sep = ""), 
          quote = TRUE, eol = "\n", na = "NA", row.names = FALSE)