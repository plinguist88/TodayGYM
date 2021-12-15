
-- Today Gym 계정 생성 명령
CREATE USER togym
IDENTIFIED BY "1234"
DEFAULT TABLESPACE USERS
TEMPORARY TABLESPACE TEMP
QUOTA UNLIMITED ON USERS;

-- Today Gym 삭제 명령
DROP USER togym;

-- Today Gym 사용 권한 설정
GRANT DBA TO togym;

-- Today Gym 사용 권한 회수
REVOKE DBA FROM togym;