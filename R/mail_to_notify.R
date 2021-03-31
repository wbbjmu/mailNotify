###############################################################################
###############################################################################
#
# Create email alert to notify the project in R has been completed
#
###############################################################################
###############################################################################

## LOAD PACKAGES
if (!require('emayili')) devtools::install_github("datawookie/emayili")
if (!require('dplyr')) install.packages(dplyr)

require(emayili);require(dplyr)

## MAIN FUNCTION
mail_to_notify <- function(receiver="wbsph@pku.edu.cn",password="QWQFBTLRDABELQPB"){
  email <- envelope(from = "wbbjmu@163.com",to = receiver,subject = "PROJECT COMPLETED",
                    text = "Your project in R has been completed !")
  smtp <- server(host = "smtp.163.com",
                 port = 25,
                 username = "wbbjmu",
                 password = password)

  smtp(email, verbose = F)
}




