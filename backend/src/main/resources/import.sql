INSERT INTO tb_user (name, email, password) VALUES ('Joel Maciel', 'joel@gmail.com','$2a$12$dxLtb8gPxqOa2FosQ3voLuTLId3NjuNFy1gP46/wnBlYQIwdXeqOW');
INSERT INTO tb_user (name, email, password) VALUES ('Paulo', 'paulo@gmail.com','$2a$12$dxLtb8gPxqOa2FosQ3voLuTLId3NjuNFy1gP46/wnBlYQIwdXeqOW');
INSERT INTO tb_user (name, email, password) VALUES ('Mirela de Alencar', 'mirela@gmail.com','$2a$12$dxLtb8gPxqOa2FosQ3voLuTLId3NjuNFy1gP46/wnBlYQIwdXeqOW');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Curso Java', 'https://chiptronic.com.br/blog/wp-content/uploads/2018/12/7-Cursos-para-chaveiros.jpg', 'https://chiptronic.com.br/blog/wp-content/uploads/2018/12/7-Cursos-para-chaveiros.jpg');

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2021-10-03T03:00:00Z', TIMESTAMP WITH TIME ZONE '2022-10-03T03:00:00Z', 1 );
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2021-12-03T03:00:00Z', TIMESTAMP WITH TIME ZONE '2022-09-03T03:00:00Z', 1 );









