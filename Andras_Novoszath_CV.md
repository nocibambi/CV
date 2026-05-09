# András Novoszáth

Budapest, Hungary | +36 30 889 4244 | <nocibambi@gmail.com> | [LinkedIn](https://www.linkedin.com/in/andrasnovoszath/)

Over a decade of experience across data engineering, machine learning, and documentation / knowledge systems — applied to clinical trials, regulated reporting, B2B SaaS, and distributed organisations. Looking for projects in clinical research data; OHDSI study underway.

## Experience

### Data Platform & Operations Engineer | Diligent | Budapest, Hungary | June 2023 -- Present

- Designed and operated **serverless data-platform infrastructure** for governance and voting-data pipelines covering publicly listed companies.
- Migrated legacy VBScript fetchers to Python and resolved data-quality, performance and rate-limit issues.
- Introduced **Pydantic schema contracts** and output-validation models, structured logging, dashboards and alerting on CloudWatch, SNS and Slack.
- Within Diligent's **DataHub** team, synchronised schemas across the voting-data scraper and downstream service repositories, and managed shared ECR / CodeArtifact images.
- Built PySpark / EMR pipelines and Apache Airflow DAGs for incoming third-party data, with extensive unit tests and reproducible end-to-end local pipeline tests.
- Orchestrated **multi-month backfills** with live run logs and per-stage data-coverage summaries.
- **Cut CI/CD build time by 75%** and expanded reliability and developer-experience tooling.
- Acted as the DataHub team's **AI ambassador** (one role per Diligent engineering team) and integrated AI coding tools into the team's development process. Delivered internal AWS sessions on databases and microservices.

### Data Insights Squad | Aragon | Remote | Aug 2022 -- Feb 2023

- Built community and governance analytics for a distributed organisation, integrating multiple primary data sources with end-to-end provenance.
- Designed and shipped a financial-oversight dashboard tracking treasury funds across distributed wallets.

### Data Scientist & Engineer | Freelance | Remote | Sep 2018 -- Jun 2023

- **[Renovia][renovia] / [Bold Type Consulting][bold-type]**: built a clinical-trial reporting pipeline assessing a pelvic-floor therapeutic device for stress urinary incontinence; produced reports informing investment decisions.
- **[Bioepic][bioepic]**: built a time-series glucose forecasting model from clinical-trial CGM data, **matching the prediction accuracy of market-leading commercial medical devices**.
- Built an ML pipeline for evaluating feature-engineering techniques on a multi-label classification dataset.

### Junior Consultant & Technical Writer | Dorsum | Budapest, Hungary | Jan 2016 -- May 2018

- Supported a **B2B wealth-management SaaS** through regulation analysis, technical documentation, business proposals and marketing content. Introduced a single-source documentation architecture and version control. Wrote three white papers on wealth management, mobile banking and financial innovation.

## Skills

- **Clinical & research data**: clinical-trial reporting, biosignal time-series modelling.
- **Data engineering**: Python, pandas, NumPy, PySpark, SQL (MS SQL, BigQuery, Snowflake, InfluxDB), Pydantic, Apache Airflow, AWS Step Functions, EventBridge.
- **Cloud & DevOps**: AWS (Lambda, EMR, SNS, SQS, CloudWatch, CodeBuild, CodePipeline, CodeArtifact, ECR), Terraform, AWS CDK, Docker, GitHub Actions, Linux, bash.
- **Machine learning**: scikit-learn, Keras; time-series forecasting, classification, clustering, cross-validation, feature-engineering evaluation.
- **Data visualisation & dashboards**: matplotlib, seaborn, altair, plotly; Streamlit, Dash, Anvil.
- **AI in development**: Cursor and VS Code agents; project-specific agent configurations; prompt engineering.
- **Methodology**: research design, ethnographic and evidence-practice analysis, technical writing.
- **Languages**: English (fluent), Hungarian (native).

## Education

- **Ph.D., Science & Technology Studies** -- The Open University, 2010 -- 2016. Ethnographic study of knowledge production and technology adoption in regulated and innovative domains. Fieldwork on the Bristol Pound local currency.
- **Diploma (BA + MA), Economics** -- Budapest University of Technology and Economics, 2002 -- 2007. Specialisation in economic analysis: statistics, econometrics, optimisation. Dissertation on economic growth models.

## Certifications

- Mathematics for Machine Learning (Coursera, 2019).
- IBM Cognitive Class -- Data Science Foundations & Business levels (2017).
- Arc Certified Remote Data Scientist (2022).

## Side-projects

Further notes on several projects appear on [Medium][medium] and the [data-science blog][dsblog].

- **[Aave Liquidity Provider TVL Point Tracker][aave]** (Oct -- Nov 2024) -- tracker computing token-balance points from primary on-chain data, with end-to-end source-to-metric provenance and verification; results exposed via FastAPI.
- **Token-Swap Pool / Market Comparison ETL** (Aug -- Sep 2024) -- pipeline integrating multiple distributed-market data sources with schema validation in Pydantic; no public repository (methodology overlaps with [distributed-data writing on Medium][medium]).
- **[CTR outlier detection][ctr]** (Mar 2022, Adverity challenge) -- outlier detection on click-through-rate time-series data.
- **[eBay car-pricing classifier][ebay]** (2018) -- ML classifier predicting whether a listed car is overpriced within its category (~0.83 AUC).
- **[Atlas of Economic Complexity][aec]** (2018 -- 2021) -- exploratory analytics and visualisation of public economic-complexity data.

## Currently studying

OHDSI / OMOP data model (EHDEN academy) and clinical-evidence methodology, including target-trial emulation and observational study design.

[aave]: https://github.com/nocibambi/aave-lp-point-tracker
[aec]: https://github.com/nocibambi/aec
[ctr]: https://github.com/nocibambi/adverity-ctr-challenge
[ebay]: https://github.com/nocibambi/ebay-car-pricing
[bioepic]: https://www.linkedin.com/company/bioepic-ltd/
[bold-type]: http://boldtype.com/
[renovia]: https://www.linkedin.com/company/renoviainc/
[medium]: https://medium.com/@nocibambi
[dsblog]: https://nocibambi.github.io/ds_blog/

<link rel="stylesheet" href="resume_styling.css">
