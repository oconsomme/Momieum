SELECT * FROM TB_BOARD;

SELECT * FROM BOARD;

tb_test



SELECT * FROM TB_MEMBER;

CREATE TABLE tb_board_admin
(
    bd_idx        NUMBER(18, 0)     NOT NULL, 
    bd_title      VARCHAR2(1000)    NOT NULL, 
    bd_content    CLOB              NOT NULL, 
    // bd_file       VARCHAR2(1000)  , 
    created_at    DATE              DEFAULT SYSDATE NOT NULL, 
    mem_id        VARCHAR2(30)      NOT NULL, 
    bd_views      NUMBER(18, 0)     DEFAULT 0 NOT NULL, 
    bd_likes      NUMBER(18, 0)     DEFAULT 0 NOT NULL, 
     PRIMARY KEY (bd_idx)
);

SELECT * FROM tb_board_admin;

INSERT INTO tb_board_admin (bd_idx, bd_title, bd_content, created_at, mem_id, bd_views, bd_likes) 
VALUES (1, '프리셋', '전반적으로 사회적응상태나 정서면에서 안정적입니다. .', sysdate, 'user', 1, 1);

INSERT INTO tb_board_admin (bd_idx, bd_title, bd_content, created_at, mem_id, bd_views, bd_likes) 
VALUES (2, '드로잉', '해당 아동이 그린 나무의 크기가 다른 객체들에 비해,...', sysdate, 'test', 1, 1);


 



INSERT INTO tb_board_admin (bd_idx, bd_title, bd_content, created_at, mem_id, bd_views, bd_likes) 
VALUES (1, '프리셋', '전반적으로 사회적응상태나 정서면에서 안정적입니다. .', sysdate, 'user', 1, 1);

INSERT INTO tb_board_admin (bd_idx, bd_title, bd_content, created_at, mem_id, bd_views, bd_likes) 
VALUES (2, '드로잉', '해당 아동이 그린 나무의 크기가 다른 객체들에 비해,...', sysdate, 'test', 1, 1);







