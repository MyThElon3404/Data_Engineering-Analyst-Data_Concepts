# What is data engineering :
- Data engineering is a set of operations to make data available and usable to data scientists, data analysts, business intelligence (BI) developers, and other specialists within an organization. It takes dedicated experts – data engineers – to design and build systems for gathering and storing data at scale as well as preparing it for further analysis.

# Data engineering process :
- The data engineering process covers a sequence of tasks that turn a large amount of raw data into a practical product meeting the needs of analysts, data scientists, machine learning engineers, and others. Typically, the end-to-end workflow consists of the following stages.
  
![data_engineering_image](https://www.altexsoft.com/static/blog-post/2023/11/41981453-7655-4463-9c06-cb6e80b69d04.webp)

- Data flow orchestration provides visibility into the data engineering process, ensuring that all tasks are completed. It coordinates and continuously tracks data workflows to detect and fix data quality and performance issues.
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
- Without DWs, data scientists would have to pull data straight from the production database and may report different results to the same question or cause delays and even outages. Serving as an enterprise’s single source of truth, the data warehouse simplifies the organization’s reporting and analysis, decision-making, and metrics forecasting.

![DW](https://www.altexsoft.com/static/blog-post/2023/11/c13b90df-c232-4676-b7da-80218aacf191.webp)

- Data warehouse storage. The foundation of data warehouse architecture is a database that stores all enterprise data allowing business users to access it to draw valuable insights.
- Data architects usually decide between on-premises and cloud-hosted DWs noting how the business can benefit from this or that solution. Although the cloud environment is more cost-efficient, easier to scale up or down, and isn’t limited to a prescribed structure

# Metadata :
- Adding business context to data, metadata helps transform it into comprehensible knowledge. Metadata defines how data can be changed and processed. It contains information about any transformations or operations applied to source data while loading it into the data warehouse.

# Data marts :
- Simply speaking, a data mart is a smaller data warehouse (their size is usually less than 100Gb.). They become necessary when the company and the amount of its data grow and it becomes too long and ineffective to search for information in an enterprise DW. Instead, data marts are built to allow different departments (e.g., sales, marketing, C-suite) to access relevant information quickly and easily.

![DM](https://www.altexsoft.com/static/blog-post/2023/11/f1f098ea-bb13-4ea4-a903-8aec52b15eab.webp)

#### There are three main types of data marts :
  1. Dependent data marts are created from an enterprise DW and used as a primary source of information (also known as a top-down approach).
  2. Independent data marts are standalone systems that function without DWs extracting information from various external and internal sources (it’s also known as a top-down approach).
  3. Hybrid data marts combine information from both DW and other operational systems.

#### So, the main difference between data warehouses and data marts is that a DW is a large repository that holds all company data extracted from multiple sources, making it difficult to process and manage queries. Meanwhile, a data mart is a smaller repository containing a limited amount of data for a particular business group or department.

# OLAP and OLAP cubes :
- OLAP or Online Analytical Processing refers to the computing approach that allows users to analyze multidimensional data.
- OLTP or Online Transactional Processing, a simpler method of interacting with databases, is not designed for analyzing massive amounts of data from different perspectives.
 #### Traditional databases resemble spreadsheets, using the two-dimensional structure of rows and columns. However, in OLAP, datasets are presented in multidimensional structures -- OLAP cubes. Such structures enable efficient processing and advanced analysis of vast amounts of varied data. For example, a sales department report would include such dimensions as product, region, sales representative, sales amount, month, and so on.

- Information from DWs is aggregated and loaded into the OLAP cube, where it gets precalculated and is readily available for user requests.

![OLAP_cubes](https://www.altexsoft.com/static/blog-post/2023/11/c5cb8ef8-88cf-471c-9c50-e935b35e9101.webp)

# Big data engineering :
- Speaking about data engineering, we can’t ignore Big Data. Grounded in the four Vs – volume, velocity, variety, and veracity. Big Data engineering is about building massive reservoirs and highly scalable and fault-tolerant distributed systems.
- Big data architecture differs from conventional data handling, as here we’re talking about such massive volumes of rapidly changing information streams that a data warehouse can’t accommodate. That’s where a data lake comes in handy.

![BDE](https://www.altexsoft.com/static/blog-post/2023/11/5d7d3c58-b820-4045-b44d-24875a7aa245.webp)

- A data lake uses the ELT approach and starts data loading immediately after extracting it, handling raw — often unstructured — data.
- A data lake is worth building in those projects that will scale and need a more advanced architecture. Besides, it’s very convenient when the purpose of the data hasn’t been determined yet. In this case, you can load data quickly, store it, and modify it as necessary.
- Data lakes are also a powerful tool for data scientists and ML engineers, who would use raw data to prepare it for predictive analytics and machine learning.
- Lakes are built on large, distributed clusters that would be able to store and process masses of data. A famous example of such a data lake platform is Hadoop.

# Hadoop and its ecosystem :
- Hadoop is a large-scale, Java-based data processing framework capable of analyzing massive datasets. The platform facilitates splitting data analysis jobs across - various servers and running them in parallel. It consists of three components:
  1. Hadoop Distributed File System (HDFS) capable of storing Big Data,
  2. a processing engine MapReduce, and
  3. a resource manager YARN to control and monitor workloads.
- Also, Hadoop benefits from a vast ecosystem of open-source tools that enhance its capabilities and address various challenges of Big Data.

![Hadoop](https://www.altexsoft.com/static/blog-post/2023/11/d735f675-32ee-434b-9965-c2ee09402c7b.webp)

# Streaming analytics instruments :
- Tools enabling streaming analytics form a vital group within the Hadoop ecosystem. These include -
  1. Apache Spark, a computing engine for large datasets with near-real-time processing capabilities; 
  2. Apache Storm, a real-time computing system for unbounded streams of data (those that have a start but no defined end and must be continuously processed);
  3. Apache Flink processing both unbounded and bounded data streams (those with a defined start and end);
  4. Apache Kafka, a streaming platform for messaging, storing, processing, and integrating large volumes of data;

# Enterprise data hub :
- When a big data pipeline is not managed correctly, data lakes quickly become data swamps – a collection of miscellaneous data that is neither governable nor usable. A new data integration approach called a data hub emerged to tackle this problem.
- Enterprise data hubs (EDHs) are the next generation of data architecture aiming at sharing managed data between systems. They connect multiple sources of information, including DWs and data lakes.

# Role of data engineer :
- Juan De Dios Santos, a data engineer himself, defines this role in the following way: “In a multidisciplinary team that includes data scientists, BI engineers, and data engineers, the role of the data engineer is mostly to ensure the quality and availability of the data.”

# Skills and qualifications :
- Data engineering lies at the intersection of software engineering and data science, which leads to skill overlapping.

![SQ](https://www.qa.altexsoft-com.altexsoft.pro/static/blog-post/2023/10/0934bd1f-dba4-46ff-b5c2-d28d9302c204.webp)

- Data engineers use programming languages to enable reliable and convenient access to data and databases.
- A data engineer should know multiple kinds of databases (SQL and NoSQL), data platforms, concepts such as MapReduce, batch and stream processing, and even some basic theory of data itself, e.g., data types, and descriptive statistics.
- Data engineers need experience with various data storage technologies and frameworks they can combine to build data pipelines.
