
MariaDB [(none)]> -- TUGAS BASIS DATA
MariaDB [(none)]> -- Nama  : Hasnidar
MariaDB [(none)]> -- NIM   : D0224321
MariaDB [(none)]> -- Kelas : Informatika C24
MariaDB [(none)]> create database drakor;
Query OK, 1 row affected (0.002 sec)

MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| drakor             |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| sekolah            |
| test               |
| uts_d0224321       |
+--------------------+
8 rows in set (0.001 sec)

MariaDB [(none)]> use drakor;
Database changed
MariaDB [drakor]> CREATE TABLE drama (
    ->     id_drama INT AUTO_INCREMENT PRIMARY KEY,
    ->     judul VARCHAR(100),
    ->     genre VARCHAR(50),
    ->     tahun_rilis INT,
    ->     rating FLOAT
    -> );
Query OK, 0 rows affected (0.037 sec)

MariaDB [drakor]>
MariaDB [drakor]> CREATE TABLE aktor (
    ->     id_aktor INT AUTO_INCREMENT PRIMARY KEY,
    ->     nama VARCHAR(100),
    ->     jenis_kelamin VARCHAR(10),
    ->     tahun_lahir INT,
    ->     negara VARCHAR(50)
    -> );
Query OK, 0 rows affected (0.033 sec)

MariaDB [drakor]>
MariaDB [drakor]> CREATE TABLE pemeran (
    ->     id_pemeran INT AUTO_INCREMENT PRIMARY KEY,
    ->     id_drama INT,
    ->     id_aktor INT,
    ->     peran VARCHAR(100),
    ->     FOREIGN KEY (id_drama) REFERENCES drama(id_drama),
    ->     FOREIGN KEY (id_aktor) REFERENCES aktor(id_aktor)
    -> );
Query OK, 0 rows affected (0.045 sec)

MariaDB [drakor]> INSERT INTO drama (judul, genre, tahun_rilis, rating) VALUES
    -> ('Crash Landing on You', 'Romance', 2019, 9.1),
    -> ('Goblin', 'Fantasy', 2016, 8.9),
    -> ('Descendants of the Sun', 'Romance', 2016, 8.5),
    -> ('Vincenzo', 'Action', 2021, 8.4),
    -> ('Itaewon Class', 'Drama', 2020, 8.2),
    -> ('Business Proposal', 'Romantic Comedy', 2022, 8.1),
    -> ('Start-Up', 'Romance', 2020, 8.0),
    -> ('My Name', 'Action', 2021, 7.9),
    -> ('All of Us Are Dead', 'Thriller', 2022, 7.8),
    -> ('Sweet Home', 'Horror', 2020, 7.7),
    -> ('Twenty-Five Twenty-One', 'Drama', 2022, 8.5),
    -> ('The Glory', 'Thriller', 2022, 8.7),
    -> ('Snowdrop', 'Romance', 2021, 8.6),
    -> ('Hotel Del Luna', 'Fantasy', 2019, 8.7),
    -> ('True Beauty', 'Romance', 2020, 8.1);
Query OK, 15 rows affected (0.010 sec)
Records: 15  Duplicates: 0  Warnings: 0

MariaDB [drakor]>
MariaDB [drakor]> INSERT INTO aktor (nama, jenis_kelamin, tahun_lahir, negara) VALUES
    -> ('Hyun Bin', 'Laki-Laki', 1982, 'Korea Selatan'),
    -> ('Son Ye Jin', 'Perempuan', 1982, 'Korea Selatan'),
    -> ('Song Joong Ki', 'Laki-Laki', 1985, 'Korea Selatan'),
    -> ('Kim Tae Ri', 'Perempuan', 1990, 'Korea Selatan'),
    -> ('Park Seo Joon', 'Laki-Laki', 1988, 'Korea Selatan'),
    -> ('Jun Ji Hyun', 'Perempuan', 1981, 'Korea Selatan'),
    -> ('Han So Hee', 'Perempuan', 1994, 'Korea Selatan'),
    -> ('Nam Joo Hyuk', 'Laki-Laki', 1994, 'Korea Selatan'),
    -> ('Lee Min Ho', 'Laki-Laki', 1987, 'Korea Selatan'),
    -> ('IU', 'Perempuan', 1993, 'Korea Selatan'),
    -> ('Song Hye Kyo', 'Perempuan', 1981, 'Korea Selatan'),
    -> ('Park Hyung Sik', 'Laki-Laki', 1991, 'Korea Selatan'),
    -> ('Kim Yoo Jung', 'Perempuan', 1999, 'Korea Selatan'),
    -> ('Ahn Hyo Seop', 'Laki-Laki', 1995, 'Korea Selatan'),
    -> ('Park Bo Young', 'Perempuan', 1990, 'Korea Selatan');
Query OK, 15 rows affected (0.013 sec)
Records: 15  Duplicates: 0  Warnings: 0

MariaDB [drakor]> INSERT INTO pemeran (id_drama, id_aktor, peran) VALUES
    -> (1, 1, 'Ri Jeong Hyeok'),
    -> (1, 2, 'Yoon Se Ri'),
    -> (2, 6, 'Ji Eun Tak'),
    -> (3, 3, 'Yoo Shi Jin'),
    -> (4, 3, 'Vincenzo Cassano'),
    -> (5, 5, 'Park Sae Royi'),
    -> (6, 14, 'Kang Tae Moo'),
    -> (6, 15, 'Shin Ha Ri'),
    -> (7, 8, 'Nam Do San'),
    -> (8, 7, 'Yoon Ji Woo'),
    -> (9, 11, 'Cheong San'),
    -> (10, 10, 'Ji Eun'),
    -> (11, 4, 'Na Hee Do'),
    -> (12, 11, 'Moon Dong Eun'),
    -> (13, 12, 'Su Ho');
Query OK, 15 rows affected (0.016 sec)
Records: 15  Duplicates: 0  Warnings: 0

MariaDB [drakor]> select * from drama;
+----------+------------------------+-----------------+-------------+--------+
| id_drama | judul                  | genre           | tahun_rilis | rating |
+----------+------------------------+-----------------+-------------+--------+
|        1 | Crash Landing on You   | Romance         |        2019 |    9.1 |
|        2 | Goblin                 | Fantasy         |        2016 |    8.9 |
|        3 | Descendants of the Sun | Romance         |        2016 |    8.5 |
|        4 | Vincenzo               | Action          |        2021 |    8.4 |
|        5 | Itaewon Class          | Drama           |        2020 |    8.2 |
|        6 | Business Proposal      | Romantic Comedy |        2022 |    8.1 |
|        7 | Start-Up               | Romance         |        2020 |      8 |
|        8 | My Name                | Action          |        2021 |    7.9 |
|        9 | All of Us Are Dead     | Thriller        |        2022 |    7.8 |
|       10 | Sweet Home             | Horror          |        2020 |    7.7 |
|       11 | Twenty-Five Twenty-One | Drama           |        2022 |    8.5 |
|       12 | The Glory              | Thriller        |        2022 |    8.7 |
|       13 | Snowdrop               | Romance         |        2021 |    8.6 |
|       14 | Hotel Del Luna         | Fantasy         |        2019 |    8.7 |
|       15 | True Beauty            | Romance         |        2020 |    8.1 |
+----------+------------------------+-----------------+-------------+--------+
15 rows in set (0.001 sec)

MariaDB [drakor]> select * from pemeran;
+------------+----------+----------+------------------+
| id_pemeran | id_drama | id_aktor | peran            |
+------------+----------+----------+------------------+
|          1 |        1 |        1 | Ri Jeong Hyeok   |
|          2 |        1 |        2 | Yoon Se Ri       |
|          3 |        2 |        6 | Ji Eun Tak       |
|          4 |        3 |        3 | Yoo Shi Jin      |
|          5 |        4 |        3 | Vincenzo Cassano |
|          6 |        5 |        5 | Park Sae Royi    |
|          7 |        6 |       14 | Kang Tae Moo     |
|          8 |        6 |       15 | Shin Ha Ri       |
|          9 |        7 |        8 | Nam Do San       |
|         10 |        8 |        7 | Yoon Ji Woo      |
|         11 |        9 |       11 | Cheong San       |
|         12 |       10 |       10 | Ji Eun           |
|         13 |       11 |        4 | Na Hee Do        |
|         14 |       12 |       11 | Moon Dong Eun    |
|         15 |       13 |       12 | Su Ho            |
+------------+----------+----------+------------------+
15 rows in set (0.001 sec)

MariaDB [drakor]> select * from aktor;
+----------+----------------+---------------+-------------+---------------+
| id_aktor | nama           | jenis_kelamin | tahun_lahir | negara        |
+----------+----------------+---------------+-------------+---------------+
|        1 | Hyun Bin       | Laki-Laki     |        1982 | Korea Selatan |
|        2 | Son Ye Jin     | Perempuan     |        1982 | Korea Selatan |
|        3 | Song Joong Ki  | Laki-Laki     |        1985 | Korea Selatan |
|        4 | Kim Tae Ri     | Perempuan     |        1990 | Korea Selatan |
|        5 | Park Seo Joon  | Laki-Laki     |        1988 | Korea Selatan |
|        6 | Jun Ji Hyun    | Perempuan     |        1981 | Korea Selatan |
|        7 | Han So Hee     | Perempuan     |        1994 | Korea Selatan |
|        8 | Nam Joo Hyuk   | Laki-Laki     |        1994 | Korea Selatan |
|        9 | Lee Min Ho     | Laki-Laki     |        1987 | Korea Selatan |
|       10 | IU             | Perempuan     |        1993 | Korea Selatan |
|       11 | Song Hye Kyo   | Perempuan     |        1981 | Korea Selatan |
|       12 | Park Hyung Sik | Laki-Laki     |        1991 | Korea Selatan |
|       13 | Kim Yoo Jung   | Perempuan     |        1999 | Korea Selatan |
|       14 | Ahn Hyo Seop   | Laki-Laki     |        1995 | Korea Selatan |
|       15 | Park Bo Young  | Perempuan     |        1990 | Korea Selatan |
+----------+----------------+---------------+-------------+---------------+
15 rows in set (0.001 sec)

MariaDB [drakor]>
