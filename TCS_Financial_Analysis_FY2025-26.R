library(readxl)
library(ggplot2)

file_path <- file.choose()
file_path


income_statement <- read_excel(
  file_path,
  sheet = "Income Statement",
  skip = 2
)

balance_sheet <- read_excel(
  file_path,
  sheet = "Balance Sheet",
  skip = 3
)

cash_flow <- read_excel(
  file_path,
  sheet = "Cash Flow",
  skip = 3
)
names(income_statement)
names(balance_sheet)
names(cash_flow)
Particular | FY2025 | FY2026
head(income_statement)
head(balance_sheet)
head(cash_flow)
str(income_statement)
str(balance_sheet)
str(cash_flow)
income_statement$FY2025 <- as.numeric(income_statement$FY2025)
income_statement$FY2026 <- as.numeric(income_statement$FY2026)

balance_sheet$FY2025 <- as.numeric(balance_sheet$FY2025)
balance_sheet$FY2026 <- as.numeric(balance_sheet$FY2026)

cash_flow$FY2025 <- as.numeric(cash_flow$FY2025)
cash_flow$FY2026 <- as.numeric(cash_flow$FY2026)
balance_sheet <- read_excel(
  file_path,
  sheet = "Balance Sheet",
  skip = 3,
  col_names = TRUE
)

names(balance_sheet)
Particular FY2025 FY2026
balance_sheet$FY2025 <- as.numeric(balance_sheet$FY2025)
balance_sheet$FY2026 <- as.numeric(balance_sheet$FY2026)

str(income_statement)
revenue_2025 <- income_statement$FY2025[
  income_statement$Particular == "Revenue from Operations"
]

revenue_2026 <- income_statement$FY2026[
  income_statement$Particular == "Revenue from Operations"
]

revenue_2025
revenue_2026revenue_growth <- (revenue_2026 / revenue_2025) - 1

revenue_growth
revenue_2026revenue_growth <- (revenue_2026/revenue_2025) -1
revenue_2026revenue_growth

revenue_2026revenue_growth * 100
pat_2025 <- income_statement$FY2025[
  income_statement$Particular == "Profit After Tax"
]

pat_2026 <- income_statement$FY2026[
  income_statement$Particular == "Profit After Tax"
]

pat_2025
pat_2026
pat_growth <- (pat_2026 / pat_2025) - 1

pat_growth * 100
npm_2025 <- (pat_2025 / revenue_2025) * 100

npm_2026 <- (pat_2026 / revenue_2026) * 100

npm_2025
npm_2026
balance_sheet$Particular
names(balance_sheet)
balance_sheet$`A` — Particular`

balance_sheet$`A` — Particular`
current_assets_`2025` <- balance_sheet$`FY2025` [
  balance_sheet$ `A`  - Particular  == "Current Assets"
]

current_assets_2026 <- balance_sheet$`FY2026`[
  balance_sheet$ `A ` - Particular == "Current Assets"
]

current_liabilities_`2025` <- balance_sheet$`FY2025`[
  balance_sheet$ `A`` - Particular == "Current Liabilities"
]

current_liabilities_2026 <- balance_sheet$FY2026[
  balance_sheet$Particular == "Current Liabilities"
]
names(balance_sheet)
names(balance_sheet) <- c("Particular", "FY2025", "FY2026")
balance_sheet$FY2025 <- as.numeric(balance_sheet$FY2025)
balance_sheet$FY2026 <- as.numeric(balance_sheet$FY2026)
head(balance_sheet)
balance_sheet$Particular
current_assets_2025 <- balance_sheet$FY2025[
  balance_sheet$Particular == "Current Assets"
]

current_assets_2026 <- balance_sheet$FY2026[
  balance_sheet$Particular == "Current Assets"
]

current_liabilities_2025 <- balance_sheet$FY2025[
  balance_sheet$Particular == "Current Liabilities"
]

current_liabilities_2026 <- balance_sheet$FY2026[
  balance_sheet$Particular == "Current Liabilities"
]
current_ratio_2025 <- current_assets_2025 / current_liabilities_2025

current_ratio_2026 <- current_assets_2026 / current_liabilities_2026

current_ratio_2025
current_ratio_2026
liabilities_2025 <- balance_sheet$FY2025[
  balance_sheet$Particular == "Total Liabilities"
]

liabilities_2026 <- balance_sheet$FY2026[
  balance_sheet$Particular == "Total Liabilities"
]

equity_2025 <- balance_sheet$FY2025[
  balance_sheet$Particular == "Total Equity"
]

equity_2026 <- balance_sheet$FY2026[
  balance_sheet$Particular == "Total Equity"
]
liabilities_equity_2025 <- liabilities_2025 / equity_2025

liabilities_equity_2026 <- liabilities_2026 / equity_2026

liabilities_equity_2025
liabilities_equity_2026
names(cash_flow)
"Particular" "FY2025" "FY2026"
cash_flow$FY2025 <- as.numeric(cash_flow$FY2025)

cash_flow$FY2026 <- as.numeric(cash_flow$FY2026)
names(cash_flow)
"A — Particular" "B — FY2025" "C — FY2026"
names(cash_flow) <- c("Particular", "FY2025", "FY2026")
names(cash_flow)
cash_flow$FY2025 <- as.numeric(cash_flow$FY2025)
cash_flow$FY2026 <- as.numeric(cash_flow$FY2026)
cash_flow
names(cash_flow)
ocf_2025 <- cash_flow$FY2025[
  cash_flow$Particular == "Cash Flow from Operating Activities"
]

ocf_2026 <- cash_flow$FY2026[
  cash_flow$Particular == "Cash Flow from Operating Activities"
]

ocf_2025
ocf_2026
icf_2025 <- cash_flow$FY2025[
  cash_flow$Particular == "Cash Flow from Investing Activities"
]

icf_2026 <- cash_flow$FY2026[
  cash_flow$Particular == "Cash Flow from Investing Activities"
]

icf_2025
icf_2026
fcf_2025 <- cash_flow$FY2025[
  cash_flow$Particular == "Cash Flow from Financing Activities"
]

fcf_2026 <- cash_flow$FY2026[
  cash_flow$Particular == "Cash Flow from Financing Activities"
]

fcf_2025
fcf_2026
net_change_2025 <- cash_flow$FY2025[
  cash_flow$Particular == "Net Change in Cash & Cash Equivalents"
]

net_change_2026 <- cash_flow$FY2026[
  cash_flow$Particular == "Net Change in Cash & Cash Equivalents"
]

net_change_2025
net_change_2026
ocf_margin_2025 <- (ocf_2025 / revenue_2025) * 100

ocf_margin_2026 <- (ocf_2026 / revenue_2026) * 100

ocf_margin_2025
ocf_margin_2026
cash_flow_check_2025 <- 
  ocf_2025 + icf_2025 + fcf_2025 - net_change_2025

cash_flow_check_2026 <- 
  ocf_2026 + icf_2026 + fcf_2026 - net_change_2026

cash_flow_check_2025
cash_flow_check_2026
cash_flow_summary <- data.frame(
  Metric = c(
    "Operating Cash Flow",
    "Investing Cash Flow",
    "Financing Cash Flow",
    "Net Change in Cash",
    "OCF Margin %",
    "Cash Flow Check"
  ),
  
  FY2025 = c(
    ocf_2025,
    icf_2025,
    fcf_2025,
    net_change_2025,
    ocf_margin_2025,
    cash_flow_check_2025
  ),
  
  FY2026 = c(
    ocf_2026,
    icf_2026,
    fcf_2026,
    net_change_2026,
    ocf_margin_2026,
    cash_flow_check_2026
  )
)

cash_flow_summary
ggplot(cash_flow_chart_data, aes(x = Cash_Flow_Type, y = FY2025)) +
  geom_col() +
  labs(
    title = "TCS Cash Flow Components - FY2025",
    x = "Cash Flow Category",
    y = "₹ Crore"
  )
cash_flow_summary
ggplot2(cash_flow_chart_data,aes(x=cash_flow_Type,y=FY2025))
geom_col() +
  labs(
    title = "TCS cash Flow components - FY2025",
    x = "Cash Flow Category"
    y ="₹ Crore"
  )
ggplot2(cash_flow_chart_data, aes(...))
library(ggplot2)
ggplot(cash_flow_chart_data, aes(x = Cash_Flow_Type, y = FY2025)) +
  geom_col() +
  labs(
    title = "TCS Cash Flow Components - FY2025",
    x = "Cash Flow Category",
    y = "₹ Crore"
  )
cash_flow_chart_data <- data.frame(
  Cash_Flow_Type = c(
    "Operating CF",
    "Investing CF",
    "Financing CF"
  ),
  FY2025 = c(
    ocf_2025,
    icf_2025,
    fcf_2025
  ),
  FY2026 = c(
    ocf_2026,
    icf_2026,
    fcf_2026
  )
)

cash_flow_chart_data

library(ggplot2)

ggplot(
  cash_flow_chart_data,
  aes(x = Cash_Flow_Type, y = FY2025)
) +
  geom_col() +
  labs(
    title = "TCS Cash Flow Components - FY2025",
    x = "Cash Flow Category",
    y = "₹ Crore"
  )
ggplot(
  cash_flow_chart_data,
  aes(x = Cash_Flow_Type, y = FY2026)
) +
  geom_col() +
  labs(
    title = "TCS Cash Flow Components - FY2026",
    x = "Cash Flow Category",
    y = "₹ Crore"
  )

ocf_2025 <- cash_flow$FY2025[
  cash_flow$Particular == "Cash Flow from Operating Activities"
]

ocf_2026 <- cash_flow$FY2026[
  cash_flow$Particular == "Cash Flow from Operating Activities"
]

icf_2025 <- cash_flow$FY2025[
  cash_flow$Particular == "Cash Flow from Investing Activities"
]

icf_2026 <- cash_flow$FY2026[
  cash_flow$Particular == "Cash Flow from Investing Activities"
]

fcf_2025 <- cash_flow$FY2025[
  cash_flow$Particular == "Cash Flow from Financing Activities"
]

fcf_2026 <- cash_flow$FY2026[
  cash_flow$Particular == "Cash Flow from Financing Activities"
]
