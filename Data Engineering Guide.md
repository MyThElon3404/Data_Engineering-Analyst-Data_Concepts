# What is data engineering :
- Data engineering is a set of operations to make data available and usable to data scientists, data analysts, business intelligence (BI) developers, and other specialists within an organization. It takes dedicated experts – data engineers – to design and build systems for gathering and storing data at scale as well as preparing it for further analysis.

# Data engineering process :
- The data engineering process covers a sequence of tasks that turn a large amount of raw data into a practical product meeting the needs of analysts, data scientists, machine learning engineers, and others. Typically, the end-to-end workflow consists of the following stages.
  
![data_engineering_image](https://www.altexsoft.com/static/blog-post/2023/11/41981453-7655-4463-9c06-cb6e80b69d04.webp)

- Data flow orchestration provides visibility into the data engineering process, ensuring that all tasks are successfully completed. It coordinates and continuously tracks data workflows to detect and fix data quality and performance issues.
#### The mechanism that automates ingestion, transformation, and serving steps of the data engineering process is known as a data pipeline.

  1. Data ingestion (acquisition) moves data from multiple sources — SQL and NoSQL databases, IoT devices, websites, streaming services, etc. — to a target system to be transformed for further analysis. Data comes in various forms and can be both structured and unstructured.
 
  2. Data transformation adjusts disparate data to the needs of end users. It involves removing errors and duplicates from data, normalizing it, and converting it into the needed format.
 
  3. Data serving delivers transformed data to end users — a BI platform, dashboard, or data science team.

# Data engineering pipeline :
- A data pipeline combines tools and operations that move data from one system to another for storage and further handling. Constructing and maintaining data pipelines is the core responsibility of data engineers. Among other things, they write scripts to automate repetitive tasks – jobs.

#### Commonly, pipelines are used for -
- data migration between systems or environments (from on-premises to cloud databases);
- data wrangling or converting raw data into a usable format for analytics, BI, and machine learning projects;
- data integration from various systems and IoT devices;
- copying tables from one database to another;

# ETL pipeline :
- The ETL (Extract, Transform, Load) pipeline is the most common architecture that has been here for decades. It’s often implemented by a dedicated specialist — an ETL developer.

#### An ETL pipeline automates the following processes -
- Extract — retrieving data. At the start of the pipeline, we’re dealing with raw data from numerous sources — databases, APIs, files, etc.
- Transform — standardizing data. Having data extracted, scripts transform it to meet the format requirements. Data transformation significantly improves data discoverability and usability.
- Load — saving data to a new destination. After bringing data into a usable state, engineers can load it to the destination, typically a database management system (DBMS) or data warehouse.

![ETL](https://www.altexsoft.com/static/blog-post/2023/11/40a0c1cd-df12-49e1-ac51-2926e80479e1.webp)

- Once the data is transformed and loaded into a centralized repository, it can be used for further analysis and business intelligence operations, i.e., generating reports, creating visualizations, etc.

# ELT pipeline :
- An ELT pipeline performs the same steps but in a different order — Extract, Load, Transform. Instead of transforming all the collected data, you place it into a data warehouse, data lake, or data lakehouse. Later, you can process and format it fully or partially, once or numerous times.

![ELT-same_link_for_tut](https://www.altexsoft.com/static/blog-post/2023/11/e7fd2a33-62fd-4288-8d94-b7deba95be02.webp)

- ELT pipelines are preferable when you want to ingest as much data as possible and transform it later, depending on the needs arising. Unlike ETL, the ELT architecture doesn’t require you to decide on data types and formats in advance. In large-scale projects, two types of data pipelines are often combined to enable both traditional and real-time analytics. Also, two architectures can be involved to support Big Data analytics.

# Data pipeline challenges :
- Setting up secure and reliable data flow is challenging. Many things can go wrong during data transportation: Data can be corrupted, hit bottlenecks causing latency, or data sources may conflict, generating duplicate or incorrect data. Getting data into one place requires careful planning and testing to filter out junk data, eliminating duplicates and incompatible data types to obfuscate sensitive information while not missing critical data.

- “The importance of a healthy and relevant metrics system is that it can inform us of the status and performance of each pipeline stage while underestimating the data load, I am referring to building the system in such a way that it won’t face any overload if the product experiences an unexpected surge of users,” elaborates Juan.
- Besides a pipeline, a data warehouse must be built to support and facilitate data science activities. Let’s see how it works.

# Data warehouse :
- A data warehouse (DW) is a central repository storing data in queryable forms. From a technical standpoint, a data warehouse is a relational database optimized for reading, aggregating, and querying large volumes of data. Traditionally, DWs only contained structured data or data that could be arranged in tables. However, modern DWs can also support unstructured data (such as images, pdf files, and audio formats).
- 

















