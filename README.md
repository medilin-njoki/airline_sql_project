# Airline Database Analysis Project

A comprehensive SQL-based analysis of airline operations, passenger demographics, and airport distribution using MySQL and Python data visualization.

## 📋 Project Overview

This project analyzes airline data to provide insights into passenger demographics, flight operations, airport distribution, and pilot workload. The analysis combines SQL queries with Python-based data visualization to deliver actionable business intelligence.

## 🎯 Objectives

1. **Passenger Demographics Analysis**
   - Gender distribution among passengers
   - Average passenger age calculation
   - Top nationalities by passenger count

2. **Airport Distribution Analysis**
   - Countries with the most airports
   - Airport distribution by continent
   - Airport types and their distribution

3. **Flight Operations Analysis**
   - Top arrival airports by flight volume
   - Flight delay analysis by airport
   - Monthly flight trends
   - Pilot workload distribution

## 🗄️ Database Schema

The project uses a MySQL database (`airline_db`) with three main tables:

### Tables Structure

- **`passenger`**: Stores passenger information
  - `id` (Primary Key)
  - `passenger_id` (Unique identifier)
  - `first_name`, `last_name`
  - `gender`, `age`, `nationality`

- **`airport`**: Contains airport details
  - `id` (Primary Key)
  - `airport_code` (Unique identifier)
  - `type`, `name`, `continent`
  - `iso_country`, `iso_region`

- **`flight`**: Flight operation records
  - `id` (Primary Key)
  - `passenger_id` (Foreign Key → passenger)
  - `arrival_airport` (Foreign Key → airport)
  - `departure_date`, `flight_status`
  - `pilot_name`

## 📁 Project Structure

```
airline_sql/
├── README.md                          # Project documentation
├── .env                              # Environment variables (MySQL credentials)
├── .gitignore                        # Git ignore file
├── airline_db_design.png             # Database schema diagram
├── create-schema.sql                 # Database schema creation script
├── create_sql.ipynb                 # Jupyter notebook for data loading
├── insights.sql                      # SQL analysis queries
├── insights.ipynb                    # Python analysis and visualization
├── objectives_and_questions.md       # Analysis objectives and questions
└── airports.csv                      # Airport reference data
```

## 🚀 Setup Instructions

### Prerequisites

- MySQL Server 8.0+
- Python 3.8+
- Jupyter Notebook

### 1. Database Setup

1. Create MySQL database:
```sql
CREATE DATABASE airline_db;
```

2. Run the schema creation script:
```bash
mysql -u root -p airline_db < create-schema.sql
```

### 2. Environment Configuration

Create a `.env` file in the project root:
```
MYSQL_PASSWORD=your_mysql_password
```

### 3. Python Environment

Install required packages:
```bash
pip install pandas sqlalchemy mysql-connector-python matplotlib seaborn scipy python-dotenv
```

### 4. Data Loading

Run the `create_sql.ipynb` notebook to load data from CSV files into the database.

## 📊 Analysis Components

### SQL Analysis (`insights.sql`)

Key queries include:
- Passenger demographics and distribution
- Airport statistics by country and continent
- Flight volume analysis by airport
- Delay patterns and bottlenecks
- Pilot workload assessment
- Monthly flight trends

### Python Analysis (`insights.ipynb`)

Features:
- Database connectivity using SQLAlchemy
- Data visualization with matplotlib and seaborn
- Statistical analysis with pandas
- Interactive charts and graphs

## 🔍 Key Insights

The analysis addresses these critical business questions:

1. **Demographics**: What is the passenger profile (gender, age, nationality)?
2. **Operations**: Which airports handle the most traffic?
3. **Performance**: Where do delays occur most frequently?
4. **Resources**: How is pilot workload distributed?
5. **Trends**: What are the seasonal patterns in flight operations?

## 📈 Visualizations

The project generates various charts and graphs:
- Gender distribution pie charts
- Airport traffic bar charts
- Delay frequency analysis
- Monthly flight trends
- Geographic distribution maps

## 🛠️ Usage

### Running SQL Analysis
```bash
mysql -u root -p airline_db < insights.sql
```

### Running Python Analysis
```bash
jupyter notebook insights.ipynb
```

### Key Functions

- `load_password()`: Securely loads MySQL credentials
- `init_mysql_engine()`: Creates database connection
- `get_df_from_mysql()`: Executes SQL queries and returns DataFrames

## 📋 Requirements

### Python Packages
- pandas: Data manipulation and analysis
- sqlalchemy: Database connectivity
- mysql-connector-python: MySQL driver
- matplotlib: Data visualization
- seaborn: Statistical visualization
- scipy: Scientific computing
- python-dotenv: Environment variable management

### Database
- MySQL 8.0+
- Minimum 100MB storage for datasets

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests if applicable
5. Submit a pull request

## 📝 License

This project is for educational purposes as part of the Ironhack Data Analytics bootcamp.

## 📞 Contact

For questions or support, please contact the project maintainer.

---

*This project demonstrates SQL database design, data analysis, and visualization techniques for airline industry insights.*