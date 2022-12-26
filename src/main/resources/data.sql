INSERT INTO `country` (`capital`, `code`, `continent`, `description`, `nationality`) VALUES
('Washington', 'US', 'América', 'Estados Unidos', 'Estadounidense'),
('Lima', 'PE', 'América', 'Perú', 'Peruano');

INSERT INTO `employee_type` (`created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `description`, `details`) VALUES
('admin', '2022-10-29 13:39:31', 'admin', '2022-10-29 13:39:31', 'Tiempo Completo', 'Empleado contratado a tiempo completo');

INSERT INTO `job_title` (`created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `description`, `details`) VALUES
('admin', '2022-10-29 13:38:21', 'admin', '2022-10-29 13:38:21', 'Administración', 'A');

INSERT INTO `role` (`created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `name`, `details`) VALUES
('admin', '2022-10-28 21:11:32', 'admin', '2022-10-28 21:11:32', 'ADMIN', 'Administrador del sistema'),
('admin', '2022-10-28 21:11:39', 'admin', '2022-10-28 21:11:39', 'USER', 'Usuario');

INSERT INTO `user` (`created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `firstname`, `lastname`, `email`, `password`, `username`) VALUES
('anonymousUser', '2022-10-29 18:47:57', 'anonymousUser', '2022-10-29 18:47:57', 'admin', 'admin', 'admin@gmail.com', '$2a$10$xUIdLxV4jFWyaIEcB/quZObyvfPwNJLgJESg44o5Ow2Nsu6hS5r06', 'admin');

INSERT INTO `vehicle_make` (`created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `description`, `details`) VALUES
('admin', '2022-10-29 13:02:22', 'admin', '2022-10-29 13:02:22', 'Toyota', 'T');

INSERT INTO `vehicle_model` (`created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `description`, `details`) VALUES
('admin', '2022-10-29 12:47:28', 'admin', '2022-10-29 12:47:28', 'Auris', 'C');

INSERT INTO `vehicle_status` (`created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `description`, `details`) VALUES
(NULL, NULL, 'admin', '2022-10-29 12:35:51', 'Alquilado', 'A'),
(NULL, NULL, 'admin', '2022-10-29 12:35:56', 'Disponible', 'D'),
(NULL, NULL, 'admin', '2022-10-29 12:36:06', 'Mantenimiento', 'M'),
(NULL, NULL, 'admin', '2022-10-29 12:36:22', 'Fuera de Servicio', 'F');

INSERT INTO `vehicle_type` (`created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `description`, `details`) VALUES
(NULL, NULL, 'admin', '2022-10-29 12:56:24', 'Auto', 'A'),
(NULL, NULL, 'admin', '2022-10-29 12:56:30', 'Camión', 'C');

INSERT INTO `state` (`capital`, `code`, `countryid`, `details`, `name`) VALUES
('Los Angeles', '06', 1, 'CA', 'California'),
('Lima', '27', 2, 'LI', 'Lima');

INSERT INTO `location` (`address`, `city`, `countryid`, `description`, `details`, `stateid`) VALUES
('St. 451 Lorem...', 'Los Angeles', 1, 'Los Angeles...', 'Lorem', 1);

INSERT INTO `supplier` (`address`, `city`, `countryid`, `details`, `email`, `mobile`,`name`, `phone`, `stateid`, `website`) VALUES
('st. abc 222', 'Los Angeles', 1, 'rec', 'SPURT@gmail.com', '999999', 'SURPT', '91110', 1, 'Spurt.com');

INSERT INTO `client` (`address`, `city`, `countryid`, `details`, `email`, `mobile`, `name`, `phone`, `stateid`, `website`) VALUES
('st. abc 222', 'Los Angeles', 1, 'rec', 'alopez@gmail.com', '999999', 'Ana Lopez', '21110', 1, '');

INSERT INTO `employee` (`address`, `city`, `countryid`, `date_of_birth`, `email`, `firstname`, `gender`, `initials`, `lastname`, `marital_status`, `mobile`, `othername`, `phone`, `photo`, `social_security_number`, `stateid`, `title`, `employeetypeid`, `hire_date`, `jobtitleid`, `username`) VALUES
('Lorem...', 'Los Angeles', 1, '1999-02-28 05:00:00', 'mcarmen@gmail.com', 'maria', 'FEMALE', 'MC', 'del carmen', 'Single', '999999', 'mcarmen', '255225', '', '3575646', 1, 'Ms.', 1, '2022-10-06 05:00:00', 1, 'mcarmen');

INSERT INTO `vehicle` (`acquisition_date`, `description`, `employeeid`, `fuel_capacity`, `locationid`, `name`, `net_weight`, `power`, `registration_date`, `remarks`, `vehicle_number`, `vehiclemakeid`, `vehiclemodelid`, `vehiclestatusid`, `vehicletypeid`) VALUES
('2022-10-05 05:00:00', '', 1, '5000', 1, 'toyota auris 1', '1500kg', 'fuel', '2022-10-04 05:00:00', '', '151231', 1, 1, 2, 1);

INSERT INTO `vehicle_hire` (`created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `clientid`, `date_in`, `date_out`, `locationid`, `price`, `remarks`, `time_in`, `time_out`, `vehicleid`) VALUES
('admin', '2022-10-29 14:30:18', 'admin', '2022-10-29 14:30:18', 1, '2022-10-12 05:00:00', '2022-10-12 05:00:00', 1, '99000', '', '09:34', '12:33', 1);

INSERT INTO `user_role` (`user_id`, `role_id`) VALUES
(1, 1);





