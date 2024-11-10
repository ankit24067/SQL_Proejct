# Reality Show Database Management

## Project Overview
This project involves creating and managing a relational database system for storing information related to various reality shows. The database includes tables for shows, users, participants, producers, and television channels. Each table is connected using foreign key relationships to provide a structured and interconnected view of the data.

## Database Schema

The following tables are included in the database:

1. **Reality_Show**: Contains information about different reality shows, including show name, genre, and number of participants.
2. **User_R**: Stores user information including subscription ID, user name, password, age, PIN, city, state, and the reality show they are subscribed to.
3. **Participants**: Contains details about participants in the reality shows, such as participant ID, name, age, city, state, PIN, and the show they are part of.
4. **Producer**: Stores information about producers, including company name, producer name, country, contact information, and the show produced.
5. **Television_Channel**: Provides information on the television channels airing the reality shows, including channel name, head office, start year, and the show aired.

## Tables and Relationships

### 1. Reality_Show Table
- **Attributes**: Show_Name (PK), Genre, Num_of_participants
- **Primary Key**: Show_Name

### 2. User_R Table
- **Attributes**: Subscription_id (PK), User_Name, Passwords, Age, Pin, City, States, Show_Name (FK)
- **Foreign Key**: Show_Name references Reality_Show(Show_Name)

### 3. Participants Table
- **Attributes**: Participants_id (PK), Age, Participants_Name, City, States, Pin, Show_Name (FK)
- **Foreign Key**: Show_Name references Reality_Show(Show_Name)

### 4. Producer Table
- **Attributes**: Company_Name (PK), Producer_Name, Company_Country, Contact, Show_Name (FK)
- **Foreign Key**: Show_Name references Reality_Show(Show_Name)

### 5. Television_Channel Table
- **Attributes**: Channel_Name (PK), Head_Office, Start_Year, Show_Name (FK)
- **Foreign Key**: Show_Name references Reality_Show(Show_Name)

## SQL Scripts

The project includes SQL scripts for:
- Creating the tables and defining primary and foreign keys.
- Inserting initial data into each table.
- Performing deletion operations to remove certain records.
- Selecting data from tables to verify the current contents of each table.

## Example Queries

### Create Table
```sql
CREATE TABLE Reality_Show
(
  Show_Name varchar2(20) PRIMARY KEY,
  Genre varchar2(20),
  Num_of_participants number(10) NOT NULL 
);
