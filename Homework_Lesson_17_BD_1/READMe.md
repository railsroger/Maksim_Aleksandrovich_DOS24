<h2><img src="https://emojis.slackmojis.com/emojis/images/1531849430/4246/blob-sunglasses.gif?1531849430" width="30"/> Homework_Lesson 17 - Database 1 <img src="https://media.giphy.com/media/12oufCB0MyZ1Go/giphy.gif" width="50"></h2>

Objective: to gain practical experience in writing SQL queries
Task 1:
Input data

There is a table of analyses Analysis:
* an_id — analysis ID;
* an_name — analysis name;
* an_cost — analysis cost price;
* an_price — analysis retail price;
* an_group — analysis group.

There is a table of analysis groups Groups:
* gr_id — group ID;
* gr_name — group name;
* gr_temp — storage temperature.

There is a table of orders Orders:
* ord_id — order ID;
* ord_datetime — order date and time;
* ord_an — analysis ID.
  
We will work with these tables further.
Formulation: display the name and price for all analyses that were sold on February 5, 2020 and the following week.

Task 2(optional):
Using left join, write a query that will list all
students and the names of their courses they are taking. If a student has no
courses, then NULL should be displayed instead of the course name. To do this, you
need to relate the "Students" and "Courses" tables.
Task 3:
Steps:
1. Create a backup of the database. To do this, use the
"mysqldump" command to create a full dump of the database. Save the dump file
to a safe place, such as an external hard drive or cloud
storage.
2. Change any data in the database, for example, add a new
table or update information in an existing table.
3. Restore the database from the backup to return it to its original
state. To do this, use the "mysql" command and specify the name of the database
and the dump file to restore.
4. Verify that the database was restored successfully by checking the
data and tables in the database.
5. Create a script that will automatically create a backup of the database
and send it to a remote server for storage. For example, you
can use the "cron" tool to create backups regularly and
send them to a remote server on a schedule.
------------------------------------------------------------------------------------------------------------------------------------------------

### CREATE DATABASE AND TABLES, ADD DATA IN THE TABLES(Analysis, Groups, Orders):

![Result](https://github.com/railsroger/Maksim_Aleksandrovich_DOS24/blob/main/Homework_Lesson_17_BD_1/images/1.png)
![Result](https://github.com/railsroger/Maksim_Aleksandrovich_DOS24/blob/main/Homework_Lesson_17_BD_1/images/2.png)
![Result](https://github.com/railsroger/Maksim_Aleksandrovich_DOS24/blob/main/Homework_Lesson_17_BD_1/images/groups.png)
![Result](https://github.com/railsroger/Maksim_Aleksandrovich_DOS24/blob/main/Homework_Lesson_17_BD_1/images/describe.png)
![Result](https://github.com/railsroger/Maksim_Aleksandrovich_DOS24/blob/main/Homework_Lesson_17_BD_1/images/select_all.png)

### CALLING THE DESIRED REQUEST
![Result](https://github.com/railsroger/Maksim_Aleksandrovich_DOS24/blob/main/Homework_Lesson_17_BD_1/images/result_1.png)


### CREATE DATABASE AND TABLES, ADD DATA IN THE TABLES(Students, Courses):

![Result](https://github.com/railsroger/Maksim_Aleksandrovich_DOS24/blob/main/Homework_Lesson_17_BD_1/images/show_database_learning.png)
![Result](https://github.com/railsroger/Maksim_Aleksandrovich_DOS24/blob/main/Homework_Lesson_17_BD_1/images/add_students.png)
![Result](https://github.com/railsroger/Maksim_Aleksandrovich_DOS24/blob/main/Homework_Lesson_17_BD_1/images/select_student.png)
![Result](https://github.com/railsroger/Maksim_Aleksandrovich_DOS24/blob/main/Homework_Lesson_17_BD_1/images/select_stud_cours.png)

### RESULT LEFT JOIN
![Result](https://github.com/railsroger/Maksim_Aleksandrovich_DOS24/blob/main/Homework_Lesson_17_BD_1/images/result_left_join.png)


### BUILD BACKUP MYSQL DATABASE

![Result](https://github.com/railsroger/Maksim_Aleksandrovich_DOS24/blob/main/Homework_Lesson_17_BD_1/images/backup_bd.png)

### RESTORE BACKUP MYSQL DATABASE

![Result](https://github.com/railsroger/Maksim_Aleksandrovich_DOS24/blob/main/Homework_Lesson_17_BD_1/images/restore.png)
![Result](https://github.com/railsroger/Maksim_Aleksandrovich_DOS24/blob/main/Homework_Lesson_17_BD_1/images/check_bd1.png)
![Result](https://github.com/railsroger/Maksim_Aleksandrovich_DOS24/blob/main/Homework_Lesson_17_BD_1/images/check_bd2.png)
