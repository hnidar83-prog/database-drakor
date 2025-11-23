
MariaDB [drakor]> -- Nama : Hasnidar
MariaDB [drakor]> -- Nim : D0224321
MariaDB [drakor]> -- menggunakan where dan between dalam table
MariaDB [drakor]>  select * from drama where tahun_rilis between 2019 and 2021;
+----------+----------------------+---------+-------------+--------+
| id_drama | judul                | genre   | tahun_rilis | rating |
+----------+----------------------+---------+-------------+--------+
|        1 | Crash Landing on You | Romance |        2019 |    9.1 |
|        4 | Vincenzo             | Action  |        2021 |    8.4 |
|        5 | Itaewon Class        | Drama   |        2020 |    8.2 |
|        7 | Start-Up             | Romance |        2020 |      8 |
|        8 | My Name              | Action  |        2021 |    7.9 |
|       10 | Sweet Home           | Horror  |        2020 |    7.7 |
|       13 | Snowdrop             | Romance |        2021 |    8.6 |
|       14 | Hotel Del Luna       | Fantasy |        2019 |    8.7 |
|       15 | True Beauty          | Romance |        2020 |    8.1 |
+----------+----------------------+---------+-------------+--------+
9 rows in set (0.001 sec)

MariaDB [drakor]>  select * from pemeran where id_drama between 3 and 8;
+------------+----------+----------+------------------+
| id_pemeran | id_drama | id_aktor | peran            |
+------------+----------+----------+------------------+
|          4 |        3 |        3 | Yoo Shi Jin      |
|          5 |        4 |        3 | Vincenzo Cassano |
|          6 |        5 |        5 | Park Sae Royi    |
|          7 |        6 |       14 | Kang Tae Moo     |
|          8 |        6 |       15 | Shin Ha Ri       |
|          9 |        7 |        8 | Nam Do San       |
|         10 |        8 |        7 | Yoon Ji Woo      |
+------------+----------+----------+------------------+
7 rows in set (0.001 sec)

MariaDB [drakor]>  select * from drama where genre = "Romance";
+----------+------------------------+---------+-------------+--------+
| id_drama | judul                  | genre   | tahun_rilis | rating |
+----------+------------------------+---------+-------------+--------+
|        1 | Crash Landing on You   | Romance |        2019 |    9.1 |
|        3 | Descendants of the Sun | Romance |        2016 |    8.5 |
|        7 | Start-Up               | Romance |        2020 |      8 |
|       13 | Snowdrop               | Romance |        2021 |    8.6 |
|       15 | True Beauty            | Romance |        2020 |    8.1 |
+----------+------------------------+---------+-------------+--------+
5 rows in set (0.001 sec)

MariaDB [drakor]>  select * from aktor where jenis_kelamin = "Perempuan";
+----------+---------------+---------------+-------------+---------------+
| id_aktor | nama          | jenis_kelamin | tahun_lahir | negara        |
+----------+---------------+---------------+-------------+---------------+
|        2 | Son Ye Jin    | Perempuan     |        1982 | Korea Selatan |
|        4 | Kim Tae Ri    | Perempuan     |        1990 | Korea Selatan |
|        6 | Jun Ji Hyun   | Perempuan     |        1981 | Korea Selatan |
|        7 | Han So Hee    | Perempuan     |        1994 | Korea Selatan |
|       10 | IU            | Perempuan     |        1993 | Korea Selatan |
|       11 | Song Hye Kyo  | Perempuan     |        1981 | Korea Selatan |
|       13 | Kim Yoo Jung  | Perempuan     |        1999 | Korea Selatan |
|       15 | Park Bo Young | Perempuan     |        1990 | Korea Selatan |
+----------+---------------+---------------+-------------+---------------+
8 rows in set (0.001 sec)
