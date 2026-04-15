library(ggplot2)

big_key <- paste(all_sasitna_data$ELEV_M, all_sasitna_data$GRADIENT)
sub_key <- paste(Sasitna_rering$ELEV_M, Sasitna_rering$GRADIENT)

all_sasitna_data$match <- ifelse(big_key %in% sub_key, 1, 0)

all_sasitna_data_cut <- all_sasitna_data[all_sasitna_data$GRADIENT > 0, ]


ggplot(all_sasitna_data_cut, aes(x = GRADIENT, y = match)) +
  geom_point(alpha = 0.5, position = position_jitter(height = 0.05)) + 
  theme_minimal() +
  labs(y = "Match (0 = No, 1 = Yes)", 
       x = "Gradient Variable (e.g., SST or Distance)")





big_keyy <- paste(all_yukon_data$ELEV_M, all_yukon_data$GRADIENT)
sub_keyy <- paste(Yukon_rering$ELEV_M, Yukon_rering$GRADIENT)

all_yukon_data$match <- ifelse(big_keyy %in% sub_keyy, 1, 0)
