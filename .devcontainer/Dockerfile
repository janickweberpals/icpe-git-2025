# Pre-built Dev Container Image for R. More info: https://github.com/rocker-org/devcontainer-images/pkgs/container/devcontainer%2Ftidyverse
FROM ghcr.io/rocker-org/devcontainer/tidyverse:4.4

# Install system dependencies for common R packages
RUN apt-get update -qq && \
    apt-get install -y --no-install-recommends \
    git \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev \
    libnode-dev \
    build-essential \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Install pak and then smdi using pak
ENV PKG_SYSREQS=false
RUN R -e "install.packages('pak', repos = 'https://r-lib.github.io/p/pak/stable/')" && \
    Rscript -e "pak::pak('here')" && \
    Rscript -e "pak::pak('gtsummary@2.3.0')" && \
    Rscript -e "pak::pak('tidymodels@1.3.0')" && \
    Rscript -e "pak::pak('markdown@2.0')" && \
    Rscript -e "pak::pak('rmarkdown@2.29')" && \
    Rscript -e "pak::pak('card@0.2.5')" && \
    Rscript -e "pak::pak('cardx@0.2.5')" && \
    Rscript -e "pak::pak('ggsurvfit@1.1.0')" && \
    Rscript -e "pak::pak('survival@3.8-3')" && \
    Rscript -e "pak::pak('gt@1.0.0')" && \
    Rscript -e "pak::pak('broom@1.0.9')" && \
    Rscript -e "pak::pak('smd@0.8.0')" && \
    Rscript -e "pak::pak('quarto@1.5.0')" && \
    Rscript -e "pak::pak('yaml@2.3.10')" && \
    Rscript -e "pak::pak('languageserver@0.3.16')" && \
    Rscript -e "pak::pak('WeightIt@1.4.0')" && \
    Rscript -e "pak::pak('MatchIt@4.7.2')" && \
    Rscript -e "pak::pak('MatchThem@1.2.1')" && \
    Rscript -e "pak::pak('cobalt@4.6.0')" && \
    Rscript -e "pak::pak('smdi@0.3.1')" && \
    Rscript -e "pak::pak('janickweberpals/encore.analytics')"

# Copy RStudio preferences and helper script
COPY rstudio-prefs.json /rstudio-prefs.json
COPY copy-rstudio-prefs.sh /copy-rstudio-prefs.sh
RUN chmod +x /copy-rstudio-prefs.sh

