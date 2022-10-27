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

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Course Java', 'https://chiptronic.com.br/blog/wp-content/uploads/2018/12/7-Cursos-para-chaveiros.jpg', 'https://chiptronic.com.br/blog/wp-content/uploads/2018/12/7-Cursos-para-chaveiros.jpg');

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2021-10-03T03:00:00Z', TIMESTAMP WITH TIME ZONE '2022-10-03T03:00:00Z', 1 );
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2021-12-03T03:00:00Z', TIMESTAMP WITH TIME ZONE '2022-09-03T03:00:00Z', 1 );

INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Trilha Java', 'Learning Java', 1, 'https://chiptronic.com.br/blog/wp-content/uploads/2018/12/7-Cursos-para-chaveiros.jpg', 1 ,1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Forum', 'take your doubts', 2, 'https://chiptronic.com.br/blog/wp-content/uploads/2018/12/7-Cursos-para-chaveiros.jpg', 2 ,1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Lives', 'Exclusive live for the class', 3, 'https://chiptronic.com.br/blog/wp-content/uploads/2018/12/7-Cursos-para-chaveiros.jpg', 0, 1);

INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Chapter 1', 'In this chapter we will start', 1, 'https://chiptronic.com.br/blog/wp-content/uploads/2018/12/7-Cursos-para-chaveiros.jpg', 1, null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Chapter 2', 'In this chapter we will continue', 2, 'https://chiptronic.com.br/blog/wp-content/uploads/2018/12/7-Cursos-para-chaveiros.jpg', 1, 1);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Chapter 3', 'In this chapter we will finish', 3, 'https://chiptronic.com.br/blog/wp-content/uploads/2018/12/7-Cursos-para-chaveiros.jpg', 1, 2);

INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2022-10-03T13:00:00Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2022-10-03T13:00:00Z', null, true, false);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 01 Cap 1', 1, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (1, 'Support material: test', 'https://www.youtube.com/watch?v=nW0k-BSrbbk');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 02 Cap 1', 2, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (2, 'Support material: test2', 'https://www.youtube.com/watch?v=nW0k-BSrbbk');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 03 Cap 1', 3, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (3, '', 'https://www.youtube.com/watch?v=nW0k-BSrbbk');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Tarefa capítulo 01', 4, 1);
INSERT INTO tb_task (id, description, question_Count, approval_Count, weight, due_Date) VALUES (4, 'Description test', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2021-10-25T03:00:00Z');

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);

INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('First task feedback: please review', TIMESTAMP WITH TIME ZONE '2020-12-10T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Second task feedback: please review', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('third task feedback: please review', TIMESTAMP WITH TIME ZONE '2020-12-14T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);




