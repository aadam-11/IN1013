-- 1
SELECT first_name, surname
FROM restBill rb
INNER JOIN restStaff rs
ON rb.waiter_no = rb.staff_no 
WHERE cust_name = ‘Tanya Singh’;

--2
SELECT rrm.room_date
FROM restroom_management rrm
INNER JOIN restStaff rs
ON rrm.headwaiter = rs.staff_no
WHERE rrm.room_date BETWEEN 160201 AND 160229 
AND rs.first_name = ‘Charles’ 
AND rrm.room_name = ‘Green’;

--3
SELECT rs.first_name, rs.surname
FROM restStaff rs
INNER JOIN restStaff zoe
ON rs.headwaiter = zoe.headwaiter
WHERE zoe.first_name = 'Zoe' AND zoe.surname = 'Ball'
AND rs.staff_no != zoe.staff_no;

--4
SELECT rb.cust_name, rb.bill_total, rs.first_name
FROM restBill rb
INNER JOIN restStaff rs 
ON rs.staff_no = rb.waiter_no
ORDER BY rb.bill_total DESC;

--5
SELECT rs.first_name, rs.surname
FROM restStaff rs
INNER JOIN restBill rb ON rs.staff_no = rb.waiter_no
WHERE rb.table_no IN (
    SELECT table_no 
    FROM restBill 
    WHERE bill_no IN (00014, 00017)
)
AND rb.bill_no NOT IN (00014, 00017);

--6
SELECT rs.first_name, rs.surname
FROM restStaff rs
INNER JOIN restRoom_management rm
ON rs.staff_no = rm.headwaiter
WHERE rm.room_name = 'Blue'
AND rm.room_date = 160312
UNION
SELECT rs.first_name, rs.surname
FROM restStaff rs
INNER JOIN restBill rb
ON rs.staff_no = rb.waiter_no
WHERE rb.table_no IN (
    SELECT table_no
    FROM restBill
    INNER JOIN restRoom_management rm
    ON rm.room_name = 'Blue'
    WHERE rm.room_date = 160312
);
