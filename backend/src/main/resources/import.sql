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

INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Trilha Java', 'Aprendendo Java', 1, 'https://chiptronic.com.br/blog/wp-content/uploads/2018/12/7-Cursos-para-chaveiros.jpg', 1 ,1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Forum', 'Tire suas dúvidas', 2, 'https://chiptronic.com.br/blog/wp-content/uploads/2018/12/7-Cursos-para-chaveiros.jpg', 2 ,1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Lives', 'Lives exclusivas para a turma', 3, 'https://chiptronic.com.br/blog/wp-content/uploads/2018/12/7-Cursos-para-chaveiros.jpg', 0, 1);

INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 1', 'Neste capitulo vamos começar', 1, 'https://chiptronic.com.br/blog/wp-content/uploads/2018/12/7-Cursos-para-chaveiros.jpg', 1, null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 2', 'Neste capitulo vamos continuar', 1, 'https://chiptronic.com.br/blog/wp-content/uploads/2018/12/7-Cursos-para-chaveiros.jpg', 1, 1);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 3', 'Neste capitulo vamos finalizar', 1, 'https://chiptronic.com.br/blog/wp-content/uploads/2018/12/7-Cursos-para-chaveiros.jpg', 1, 2);









