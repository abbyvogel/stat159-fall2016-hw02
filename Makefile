.PHONY: data/Advertising.csv all clean

all: eda-output.txt regression.RData report.pdf

data/Advertising.csv:
	curl -o data/Advertising.csv "http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv"


regression.RData: code/regression-script.R data/Advertising.csv
	cd code; Rscript regression-script.R


eda-output.txt: code/eda-script.R data/Advertising.csv
	cd code; Rscript eda-script.R

report.pdf: report/report.Rmd
	cd report; Rscript -e 'library(rmarkdown); render("report.Rmd")'

clean:
	rm -f report.pdf