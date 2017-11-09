md:
	Rscript -e "rmarkdown::render('README.Rmd')"

mdrefs:
	Rscript -e "rmarkdown::render('README-withrefs.Rmd', output_file = 'README.md')"

site:
	Rscript -e "pkgdown::build_site()"

check:
	Rscript -e "devtools::check()"

bioc:
	Rscript -e "BiocCheck::BiocCheck('.')"

test:
	Rscript -e "devtools::test()"

doc:
	Rscript -e "devtools::document()"

build:
	Rscript -e "devtools::build()"

cov:
	Rscript -e "covr::package_coverage(type = 'all', combine_types = FALSE, line_exclusions = list('R/plots.R'))"

