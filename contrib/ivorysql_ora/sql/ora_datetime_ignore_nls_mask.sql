--
-- datetime_ignore_nls_mask
--

-- build table and test 'datetime_ignore_nls_mask' parameter with value 0, do not ignore any types.
CREATE TABLE TEST_DATETIME_IGNORE_NLS_MASK(a date, b timestamp, c timestamptz, d timestamp with local time zone);
SET TIMEZONE TO 'Asia/Shanghai';
SET ivorysql.datetime_ignore_nls_mask TO 0;

INSERT INTO TEST_DATETIME_IGNORE_NLS_MASK VALUES('2024-04-23', '2024-04-23 15:16:11', '2024-04-23 15:16:11 +09', '2024-04-23 15:16:11');
SELECT * FROM TEST_DATETIME_IGNORE_NLS_MASK;
DELETE FROM TEST_DATETIME_IGNORE_NLS_MASK;
RESET ALL;
-- test 'datetime_ignore_nls_mask' parameter with value 1, ignore date.
SET TIMEZONE TO 'Asia/Shanghai';
INSERT INTO TEST_DATETIME_IGNORE_NLS_MASK VALUES('2024-04-23 15:16:11', '2024-04-23 15:16:11', '2024-04-23 15:16:11 +09', '2024-04-23 15:16:11');

SET ivorysql.datetime_ignore_nls_mask TO 1;

INSERT INTO TEST_DATETIME_IGNORE_NLS_MASK VALUES('2024-04-23 15:16:11', '2024-04-23 15:16:11', '2024-04-23 15:16:11 +09', '2024-04-23 15:16:11');
SELECT * FROM TEST_DATETIME_IGNORE_NLS_MASK;
DELETE FROM TEST_DATETIME_IGNORE_NLS_MASK;
RESET ALL;
-- test 'datetime_ignore_nls_mask' parameter with value 2, ignore timestamp.
SET TIMEZONE TO 'Asia/Shanghai';
SET nls_timestamp_format = 'YYYY-MM-DD HH24';
INSERT INTO TEST_DATETIME_IGNORE_NLS_MASK VALUES('2024-04-23', '2024-04-23 15:16:11 +08:00', '2024-04-23 15:16:11 +09', '2024-04-23 15');

SET ivorysql.datetime_ignore_nls_mask TO 2;

INSERT INTO TEST_DATETIME_IGNORE_NLS_MASK VALUES('2024-04-23', '2024-04-23 15:16:11 +08:00', '2024-04-23 15:16:11 +09', '2024-04-23 15');
SELECT * FROM TEST_DATETIME_IGNORE_NLS_MASK;
DELETE FROM TEST_DATETIME_IGNORE_NLS_MASK;
RESET ALL;
-- test 'datetime_ignore_nls_mask' parameter with value 3, ignore date and timestamp.
SET TIMEZONE TO 'Asia/Shanghai';
SET nls_timestamp_format = 'YYYY-MM-DD HH24:MI';
INSERT INTO TEST_DATETIME_IGNORE_NLS_MASK VALUES('2024-04-23 15:16:11', '2024-04-23 15:16:11 +08:00', '2024-04-23 15:16:11 +09', '2024-04-23 15:16');
INSERT INTO TEST_DATETIME_IGNORE_NLS_MASK VALUES('2024-04-23', '2024-04-23 15:16:11 +08:00', '2024-04-23 15:16:11 +09', '2024-04-23 15:16');

SET ivorysql.datetime_ignore_nls_mask TO 3;

INSERT INTO TEST_DATETIME_IGNORE_NLS_MASK VALUES('2024-04-23 15:16:11', '2024-04-23 15:16:11 +08:00', '2024-04-23 15:16:11 +09', '2024-04-23 15:16');
SELECT * FROM TEST_DATETIME_IGNORE_NLS_MASK;
DELETE FROM TEST_DATETIME_IGNORE_NLS_MASK;
RESET ALL;
-- test 'datetime_ignore_nls_mask' parameter with value 4, ignore timestamptz.
SET TIMEZONE TO 'Asia/Shanghai';
SET nls_timestamp_tz_format = 'YYYY-MM-DD HH24:MI:SS';
INSERT INTO TEST_DATETIME_IGNORE_NLS_MASK VALUES('2024-04-23', '2024-04-23 15:16:11', '2024-04-23 15:16:11 +09:00', '2024-04-23 15:16:11');

SET ivorysql.datetime_ignore_nls_mask TO 4;

INSERT INTO TEST_DATETIME_IGNORE_NLS_MASK VALUES('2024-04-23', '2024-04-23 15:16:11', '2024-04-23 15:16:11 +09:00', '2024-04-23 15:16:11');
SELECT * FROM TEST_DATETIME_IGNORE_NLS_MASK;
DELETE FROM TEST_DATETIME_IGNORE_NLS_MASK;
RESET ALL;
-- test 'datetime_ignore_nls_mask' parameter with value 5, ignore date and timestamptz.
SET TIMEZONE TO 'Asia/Shanghai';
SET nls_timestamp_tz_format = 'YYYY-MM-DD HH24:MI:SS';
INSERT INTO TEST_DATETIME_IGNORE_NLS_MASK VALUES('2024-04-23 15:16:11', '2024-04-23 15:16:11', '2024-04-23 15:16:11 +09:00', '2024-04-23 15:16:11');
INSERT INTO TEST_DATETIME_IGNORE_NLS_MASK VALUES('2024-04-23', '2024-04-23 15:16:11', '2024-04-23 15:16:11 +09:00', '2024-04-23 15:16:11');

SET ivorysql.datetime_ignore_nls_mask TO 5;

INSERT INTO TEST_DATETIME_IGNORE_NLS_MASK VALUES('2024-04-23 15:16:11', '2024-04-23 15:16:11', '2024-04-23 15:16:11 +09:00', '2024-04-23 15:16:11');
SELECT * FROM TEST_DATETIME_IGNORE_NLS_MASK;
DELETE FROM TEST_DATETIME_IGNORE_NLS_MASK;
RESET ALL;
-- test 'datetime_ignore_nls_mask' parameter with value 6, ignore timestamp and timestamptz.
SET TIMEZONE TO 'Asia/Shanghai';
SET nls_timestamp_tz_format = 'YYYY-MM-DD HH24:MI:SS';
SET nls_timestamp_format = 'YYYY-MM-DD HH24';
INSERT INTO TEST_DATETIME_IGNORE_NLS_MASK VALUES('2024-04-23', '2024-04-23 15:16:11', '2024-04-23 15:16:11 +09:00', '2024-04-23 15');
INSERT INTO TEST_DATETIME_IGNORE_NLS_MASK VALUES('2024-04-23', '2024-04-23 15', '2024-04-23 15:16:11 +09:00', '2024-04-23 15');

SET ivorysql.datetime_ignore_nls_mask TO 6;

INSERT INTO TEST_DATETIME_IGNORE_NLS_MASK VALUES('2024-04-23', '2024-04-23 15:16:11', '2024-04-23 15:16:11 +09:00', '2024-04-23 15');
SELECT * FROM TEST_DATETIME_IGNORE_NLS_MASK;
DELETE FROM TEST_DATETIME_IGNORE_NLS_MASK;
RESET ALL;
-- test 'datetime_ignore_nls_mask' parameter with value 7, ignore date, timestamp and timestamptz.
SET TIMEZONE TO 'Asia/Shanghai';
SET nls_timestamp_tz_format = 'YYYY-MM-DD HH24:MI:SS';
SET nls_timestamp_format = 'YYYY-MM-DD HH24';
INSERT INTO TEST_DATETIME_IGNORE_NLS_MASK VALUES('2024-04-23 15:16:11', '2024-04-23 15:16:11', '2024-04-23 15:16:11 +09:00', '2024-04-23 15');
INSERT INTO TEST_DATETIME_IGNORE_NLS_MASK VALUES('2024-04-23', '2024-04-23 15:16:11', '2024-04-23 15:16:11 +09:00', '2024-04-23 15');
INSERT INTO TEST_DATETIME_IGNORE_NLS_MASK VALUES('2024-04-23', '2024-04-23 15', '2024-04-23 15:16:11 +09:00', '2024-04-23 15');

SET ivorysql.datetime_ignore_nls_mask TO 7;

INSERT INTO TEST_DATETIME_IGNORE_NLS_MASK VALUES('2024-04-23 15:16:11', '2024-04-23 15:16:11', '2024-04-23 15:16:11 +09:00', '2024-04-23 15');
SELECT * FROM TEST_DATETIME_IGNORE_NLS_MASK;
DELETE FROM TEST_DATETIME_IGNORE_NLS_MASK;
RESET ALL;
-- test 'datetime_ignore_nls_mask' parameter with value 8, ignore timestampltz.
SET TIMEZONE TO 'Asia/Shanghai';
SET nls_timestamp_format = 'YYYY-MM-DD HH24';
INSERT INTO TEST_DATETIME_IGNORE_NLS_MASK VALUES('2024-04-23', '2024-04-23 15', '2024-04-23 15:16:11 +09:00', '2024-04-23 15:16:11');

SET ivorysql.datetime_ignore_nls_mask TO 8;

INSERT INTO TEST_DATETIME_IGNORE_NLS_MASK VALUES('2024-04-23', '2024-04-23 15', '2024-04-23 15:16:11 +09:00', '2024-04-23 15:16:11');
SELECT * FROM TEST_DATETIME_IGNORE_NLS_MASK;
DELETE FROM TEST_DATETIME_IGNORE_NLS_MASK;
RESET ALL;
-- test 'datetime_ignore_nls_mask' parameter with value 9, ignore date and timestampltz.
SET TIMEZONE TO 'Asia/Shanghai';
SET nls_timestamp_format = 'YYYY-MM-DD HH24';
INSERT INTO TEST_DATETIME_IGNORE_NLS_MASK VALUES('2024-04-23 15:16:11', '2024-04-23 15', '2024-04-23 15:16:11 +09:00', '2024-04-23 15:16:11');
INSERT INTO TEST_DATETIME_IGNORE_NLS_MASK VALUES('2024-04-23', '2024-04-23 15', '2024-04-23 15:16:11 +09:00', '2024-04-23 15:16:11');

SET ivorysql.datetime_ignore_nls_mask TO 9;

INSERT INTO TEST_DATETIME_IGNORE_NLS_MASK VALUES('2024-04-23 15:16:11', '2024-04-23 15', '2024-04-23 15:16:11 +09:00', '2024-04-23 15:16:11');
SELECT * FROM TEST_DATETIME_IGNORE_NLS_MASK;
DELETE FROM TEST_DATETIME_IGNORE_NLS_MASK;
RESET ALL;
-- test 'datetime_ignore_nls_mask' parameter with value 10, ignore timestamp and timestampltz.
SET TIMEZONE TO 'Asia/Shanghai';
SET nls_timestamp_format = 'YYYY-MM-DD HH24';
INSERT INTO TEST_DATETIME_IGNORE_NLS_MASK VALUES('2024-04-23', '2024-04-23 15:16:11', '2024-04-23 15:16:11 +09:00', '2024-04-23 15:16:11');
INSERT INTO TEST_DATETIME_IGNORE_NLS_MASK VALUES('2024-04-23', '2024-04-23 15', '2024-04-23 15:16:11 +09:00', '2024-04-23 15:16:11');

SET ivorysql.datetime_ignore_nls_mask TO 10;

INSERT INTO TEST_DATETIME_IGNORE_NLS_MASK VALUES('2024-04-23', '2024-04-23 15:16:11', '2024-04-23 15:16:11 +09:00', '2024-04-23 15:16:11');
SELECT * FROM TEST_DATETIME_IGNORE_NLS_MASK;
DELETE FROM TEST_DATETIME_IGNORE_NLS_MASK;
RESET ALL;
-- test 'datetime_ignore_nls_mask' parameter with value 11, ignore date, timestamp and timestampltz.
SET TIMEZONE TO 'Asia/Shanghai';
SET nls_timestamp_format = 'YYYY-MM-DD HH24';
INSERT INTO TEST_DATETIME_IGNORE_NLS_MASK VALUES('2024-04-23 15:16:11', '2024-04-23 15:16:11', '2024-04-23 15:16:11 +09:00', '2024-04-23 15:16:11');
INSERT INTO TEST_DATETIME_IGNORE_NLS_MASK VALUES('2024-04-23', '2024-04-23 15:16:11', '2024-04-23 15:16:11 +09:00', '2024-04-23 15:16:11');
INSERT INTO TEST_DATETIME_IGNORE_NLS_MASK VALUES('2024-04-23', '2024-04-23 15', '2024-04-23 15:16:11 +09:00', '2024-04-23 15:16:11');

SET ivorysql.datetime_ignore_nls_mask TO 11;
INSERT INTO TEST_DATETIME_IGNORE_NLS_MASK VALUES('2024-04-23 15:16:11', '2024-04-23 15:16:11', '2024-04-23 15:16:11 +09:00', '2024-04-23 15:16:11');
SELECT * FROM TEST_DATETIME_IGNORE_NLS_MASK;
DELETE FROM TEST_DATETIME_IGNORE_NLS_MASK;
RESET ALL;
-- test 'datetime_ignore_nls_mask' parameter with value 12, ignore timestamptz and timestampltz.
SET TIMEZONE TO 'Asia/Shanghai';
SET nls_timestamp_format = 'YYYY-MM-DD HH24';
SET nls_timestamp_tz_format = 'YYYY-MM-DD HH24:MI:SS';
INSERT INTO TEST_DATETIME_IGNORE_NLS_MASK VALUES('2024-04-23', '2024-04-23 15', '2024-04-23 15:16:11 +09:00', '2024-04-23 15:16:11');
INSERT INTO TEST_DATETIME_IGNORE_NLS_MASK VALUES('2024-04-23', '2024-04-23 15', '2024-04-23 15:16:11', '2024-04-23 15:16:11');

SET ivorysql.datetime_ignore_nls_mask TO 12;

INSERT INTO TEST_DATETIME_IGNORE_NLS_MASK VALUES('2024-04-23', '2024-04-23 15', '2024-04-23 15:16:11 +09:00', '2024-04-23 15:16:11');
SELECT * FROM TEST_DATETIME_IGNORE_NLS_MASK;
DELETE FROM TEST_DATETIME_IGNORE_NLS_MASK;
RESET ALL;
-- test 'datetime_ignore_nls_mask' parameter with value 13, ignore date, timestamptz and timestampltz.
SET TIMEZONE TO 'Asia/Shanghai';
SET nls_timestamp_format = 'YYYY-MM-DD HH24';
SET nls_timestamp_tz_format = 'YYYY-MM-DD HH24:MI:SS';
INSERT INTO TEST_DATETIME_IGNORE_NLS_MASK VALUES('2024-04-23 15:16:11', '2024-04-23 15', '2024-04-23 15:16:11 +09:00', '2024-04-23 15:16:11');
INSERT INTO TEST_DATETIME_IGNORE_NLS_MASK VALUES('2024-04-23', '2024-04-23 15', '2024-04-23 15:16:11 +09:00', '2024-04-23 15:16:11');
INSERT INTO TEST_DATETIME_IGNORE_NLS_MASK VALUES('2024-04-23', '2024-04-23 15', '2024-04-23 15:16:11', '2024-04-23 15:16:11');

SET ivorysql.datetime_ignore_nls_mask TO 13;

INSERT INTO TEST_DATETIME_IGNORE_NLS_MASK VALUES('2024-04-23 15:16:11', '2024-04-23 15', '2024-04-23 15:16:11 +09:00', '2024-04-23 15:16:11');
SELECT * FROM TEST_DATETIME_IGNORE_NLS_MASK;
DELETE FROM TEST_DATETIME_IGNORE_NLS_MASK;
RESET ALL;
-- test 'datetime_ignore_nls_mask' parameter with value 14, ignore  timestamp, timestamptz and timestampltz.
SET TIMEZONE TO 'Asia/Shanghai';
SET nls_timestamp_format = 'YYYY-MM-DD HH24';
SET nls_timestamp_tz_format = 'YYYY-MM-DD HH24:MI:SS';
INSERT INTO TEST_DATETIME_IGNORE_NLS_MASK VALUES('2024-04-23', '2024-04-23 15:16:11', '2024-04-23 15:16:11 +09:00', '2024-04-23 15:16:11');
INSERT INTO TEST_DATETIME_IGNORE_NLS_MASK VALUES('2024-04-23', '2024-04-23 15', '2024-04-23 15:16:11 +09:00', '2024-04-23 15:16:11');
INSERT INTO TEST_DATETIME_IGNORE_NLS_MASK VALUES('2024-04-23', '2024-04-23 15', '2024-04-23 15:16:11', '2024-04-23 15:16:11');

SET ivorysql.datetime_ignore_nls_mask TO 14;
INSERT INTO TEST_DATETIME_IGNORE_NLS_MASK VALUES('2024-04-23', '2024-04-23 15:16:11', '2024-04-23 15:16:11 +09:00', '2024-04-23 15:16:11');
SELECT * FROM TEST_DATETIME_IGNORE_NLS_MASK;
DELETE FROM TEST_DATETIME_IGNORE_NLS_MASK;
RESET ALL;
-- test 'datetime_ignore_nls_mask' parameter with value 15, date, timestamp, timestamptz and timestampltz.
SET TIMEZONE TO 'Asia/Shanghai';
SET nls_timestamp_format = 'YYYY-MM-DD HH24';
SET nls_timestamp_tz_format = 'YYYY-MM-DD HH24:MI:SS';
INSERT INTO TEST_DATETIME_IGNORE_NLS_MASK VALUES('2024-04-23 15:16:11', '2024-04-23 15:16:11', '2024-04-23 15:16:11 +09:00', '2024-04-23 15:16:11');
INSERT INTO TEST_DATETIME_IGNORE_NLS_MASK VALUES('2024-04-23', '2024-04-23 15:16:11', '2024-04-23 15:16:11 +09:00', '2024-04-23 15:16:11');
INSERT INTO TEST_DATETIME_IGNORE_NLS_MASK VALUES('2024-04-23', '2024-04-23 15', '2024-04-23 15:16:11 +09:00', '2024-04-23 15:16:11');
INSERT INTO TEST_DATETIME_IGNORE_NLS_MASK VALUES('2024-04-23', '2024-04-23 15', '2024-04-23 15:16:11', '2024-04-23 15:16:11');

SET ivorysql.datetime_ignore_nls_mask TO 15;

INSERT INTO TEST_DATETIME_IGNORE_NLS_MASK VALUES('2024-04-23 15:16:11', '2024-04-23 15:16:11', '2024-04-23 15:16:11 +09:00', '2024-04-23 15:16:11');
SELECT * FROM TEST_DATETIME_IGNORE_NLS_MASK;
DELETE FROM TEST_DATETIME_IGNORE_NLS_MASK;
RESET ALL;