###############################################################################
###############################################################################
#
# Create email alert to notify the project in R has been completed
#
###############################################################################
###############################################################################

## LOAD PACKAGES
if (!require('emayili')) devtools::install_github("datawookie/emayili")
if (!require('dplyr')) library(dplyr)

library(emayili);library(dplyr)

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



Server<-list(smtpServer= "smtp.163.com")

from <- sprintf("<wbbjmu@163.com>") # the sender’s name is an optional value
to <- sprintf("<wbbjmu@163.com>")
subject <- "PROJECT COMPLETED"
body <- ""

sendmail(from,to,subject,body,control=list(smtpServer= "smtp.163.com"))
?sendmail
# 收件人邮箱
receiver <- "wbbjmu@163.com"
# 发件人邮箱
sender <- "wbbjmu@163.com"
# 邮件主题
emailSubject <- ("R MISSION COMPLETED")
# 邮件内容
emailBody <- "Use r to automatically send mail.关注公众号FTDdata."
# 邮件附件
emailFile <- "xx/xx.png"
# 发送邮件
send.mail(from = sender,
          to = receiver,
          subject = emailSubject,
          body = emailBody,
          smtp = list(host.name="smtp.163.com", # smtp 服务器主机名
                      port=465, # 默认端口
                      user.name=sender, # 用户名
                      passwd="xxxx", # 密码（授权码）
                      ssl=TRUE),
          authenticate = TRUE,
          send = TRUE,
          attach.files = emailFile, 
          encoding = "utf-8" # 编码
)
