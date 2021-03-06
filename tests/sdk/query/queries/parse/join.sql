SELECT A, B, C FROM X LEFT SEMI JOIN Y USING (ID);
SELECT A, B, C FROM X AS XX INNER JOIN Y AS YY ON XX.ID = YY.ID;
SELECT A.*, B.* FROM A JOIN B USING (ID, Region);
SELECT A, B FROM (SELECT * FROM R LEFT ANTI JOIN Q ON R.ID=Q.ID AND ZIP=ZAZ) AS V GROUP BY A ORDER BY A;
SELECT * FROM A JOIN B JOIN C JOIN D USING (ID);
SELECT * FROM A JOIN B AS BB ANTI JOIN (SELECT * FROM FOO) AS YY USING(ID) LEFT OUTER JOIN X;
SELECT y.*, x.qq, z.rr FROM A AS x JOIN B AS y JOIN C AS z USING(ID);
SELECT A.*, B.BB, B.ZZ FROM A, B;
SELECT A.* FROM (SELECT x, y, z FROM S) AS A;

SELECT Texas, Tom, Jane, Iowa FROM
( SELECT X.Sally AS Tom, X.Jane AS Sally, Iowa, Y.Kansas AS Jane, Y.Iowa AS Texas FROM
    (SELECT Tom, Sally, Jane FROM People AS X) AS X
INNER JOIN
    (SELECT Kansas, Iowa, Texas FROM States) AS Y
    USING(GenericID)
) AS P
ORDER BY Jane;

SELECT S.Kansas AS Texas, S.Texas AS Kansas FROM States AS S;

SELECT S.Foozzie AS BAR FROM (SELECT Z AS Foozzie FROM BAZ) AS S;