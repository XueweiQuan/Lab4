

# Question4

library(ggplot2)
data <- data.frame(x = seq(-3, 6, by = 0.1))

ggplot(data, aes(x = x))+
  stat_function(fun = dnorm, args = list(mean = 0, sd = 1), xlim = c(-3,3), col = "blue", lwd = 1)+
  stat_function(fun = dnorm, args = list(mean = 3.2, sd = 1), xlim = c(0,6), col = "red", lwd = 1)+
  geom_area(stat = "function", fun = dnorm, args = list(mean = 0, sd = 1), xlim = c(qnorm(0.95), 3), 
            col = "black", alpha = 0.5, aes(fill = "a"))+
  geom_area(stat = "function", fun = dnorm, args = list(mean = 3.2, sd = 1), xlim = c(0, qnorm(0.95)), 
            col = "black", alpha = 0.5, aes(fill = "b"))+
  scale_fill_manual(values = c("a" = "blue", "b" = "red"), label = c(" Type I error"," Type II error"))+
  geom_vline(xintercept = qnorm(0.95), linetype = "dashed", lwd = 0.8)+
  geom_text(x = 1, y = 0.02, label = expression(beta), size = 6)+
  geom_text(x = 2, y = 0.02, label = expression(alpha), col = "white", size = 6)+
  scale_x_continuous(breaks = c(0,3.2), label = c(expression(theta[0]), expression(theta[a])))+
  labs(x = "", y = "")+
  theme(panel.background = element_blank(),
        panel.border = element_rect(fill = NA, size = 1.1),
        legend.title = element_blank(),
        legend.text = element_text(size = 15, face = "bold"),
        axis.text = element_text(size = 16, face = "bold"),
        axis.text.x = element_text(vjust = -2),
        axis.text.y = element_text(angle = 90, hjust = 0.5, vjust = 2.5),
        axis.ticks.length = unit(.25, "cm"),
        legend.position = c(0, 1),
        legend.justification = c(0, 1),
        legend.margin = margin(10,10,10,10),
        legend.box.background = element_rect(color = "black", fill = NA, size = 1))



#Question5

is.prime <- function(x){
  if(x == 2){
    return("input is a prime number.")
  } else if(any(x %% 2:(x-1) == 0)){
    return("input is not a prime number.")
  }
  else{
    return("input is a prime number.")
  }
}


