CREATE TABLE IF NOT EXISTS `client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `countryid` int(11) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `stateid` int(11) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS  `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS  `country` (
  `id` int(11) NOT NULL  AUTO_INCREMENT,
  `capital` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `continent` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS  `department` (
  `id` int(11) NOT NULL  AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `managerid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS  `employee` (
  `id` int(11) NOT NULL  AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `countryid` int(11) DEFAULT NULL,
  `date_of_birth` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `initials` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `marital_status` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `othername` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `social_security_number` varchar(255) DEFAULT NULL,
  `stateid` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `employeetypeid` int(11) DEFAULT NULL,
  `hire_date` datetime DEFAULT NULL,
  `jobtitleid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS  `employee_status` (
  `id` int(11) NOT NULL  AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by` varchar(255) DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS  `employee_type` (
  `id` int(11) NOT NULL  AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by` varchar(255) DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS  `invoice` (
  `id` int(11) NOT NULL  AUTO_INCREMENT,
  `clientid` int(11) DEFAULT NULL,
  `invoice_date` datetime DEFAULT NULL,
  `invoicestatusid` int(11) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS  `invoice_status` (
  `id` int(11) NOT NULL  AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by` varchar(255) DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS  `job_title` (
  `id` int(11) NOT NULL  AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by` varchar(255) DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS  `location` (
  `id` int(11) NOT NULL  AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `countryid` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `stateid` int(11) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS  `module` (
  `id` int(11) NOT NULL  AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by` varchar(255) DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS  `role` (
  `id` int(11) NOT NULL  AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by` varchar(255) DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS  `state` (
  `id` int(11) NOT NULL  AUTO_INCREMENT,
  `capital` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `countryid` int(11) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS  `supplier` (
  `id` int(11) NOT NULL  AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `countryid` int(11) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `stateid` int(11) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS  `ticket` (
  `id` int(11) NOT NULL  AUTO_INCREMENT,
  `close_date` datetime DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `employeeid` int(11) DEFAULT NULL,
  `open_date` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `ticketstatusid` int(11) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS  `ticket_status` (
  `id` int(11) NOT NULL  AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by` varchar(255) DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS  `transaction` (
  `id` int(11) NOT NULL  AUTO_INCREMENT,
  `amount` double NOT NULL,
  `clientid` int(11) DEFAULT NULL,
  `contactid` int(11) DEFAULT NULL,
  `employeeid` int(11) DEFAULT NULL,
  `purpose` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `supplierid` int(11) DEFAULT NULL,
  `transaction_date` datetime DEFAULT NULL,
  `transactionstatusid` int(11) DEFAULT NULL,
  `transactiontypeid` int(11) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS  `transaction_status` (
  `id` int(11) NOT NULL  AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by` varchar(255) DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS  `transaction_type` (
  `id` int(11) NOT NULL  AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by` varchar(255) DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS  `user` (
  `id` int(11) NOT NULL  AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by` varchar(255) DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS  `user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
);

CREATE TABLE IF NOT EXISTS  `vehicle` (
  `id` int(11) NOT NULL  AUTO_INCREMENT,
  `acquisition_date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `employeeid` int(11) DEFAULT NULL,
  `fuel_capacity` varchar(255) DEFAULT NULL,
  `locationid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `net_weight` varchar(255) DEFAULT NULL,
  `power` varchar(255) DEFAULT NULL,
  `registration_date` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `vehicle_number` varchar(255) DEFAULT NULL,
  `vehiclemakeid` int(11) DEFAULT NULL,
  `vehiclemodelid` int(11) DEFAULT NULL,
  `vehiclestatusid` int(11) DEFAULT NULL,
  `vehicletypeid` int(11) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS  `vehicle_hire` (
  `id` int(11) NOT NULL  AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by` varchar(255) DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `clientid` int(11) DEFAULT NULL,
  `date_in` datetime DEFAULT NULL,
  `date_out` datetime DEFAULT NULL,
  `locationid` int(11) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `time_in` varchar(255) DEFAULT NULL,
  `time_out` varchar(255) DEFAULT NULL,
  `vehicleid` int(11) DEFAULT NULL
);

CREATE TABLE  IF NOT EXISTS `vehicle_maintenance` (
  `id` int(11) NOT NULL  AUTO_INCREMENT,
  `end_date` datetime DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `supplierid` int(11) DEFAULT NULL,
  `vehicleid` int(11) DEFAULT NULL
);

CREATE TABLE  IF NOT EXISTS `vehicle_make` (
  `id` int(11) NOT NULL  AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by` varchar(255) DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS  `vehicle_model` (
  `id` int(11) NOT NULL  AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by` varchar(255) DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL
);

CREATE TABLE  IF NOT EXISTS `vehicle_movement` (
  `id` int(11) NOT NULL  AUTO_INCREMENT,
  `date1` datetime DEFAULT NULL,
  `date2` datetime DEFAULT NULL,
  `locationid1` int(11) NOT NULL,
  `locationid2` int(11) NOT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `vehicleid` int(11) NOT NULL
);

CREATE TABLE IF NOT EXISTS  `vehicle_status` (
  `id` int(11) NOT NULL  AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by` varchar(255) DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL
);

CREATE TABLE  IF NOT EXISTS `vehicle_type` (
  `id` int(11) NOT NULL  AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by` varchar(255) DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL
);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (id);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_status`
--
ALTER TABLE `employee_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_type`
--
ALTER TABLE `employee_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_status`
--
ALTER TABLE `invoice_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_title`
--
ALTER TABLE `job_title`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_status`
--
ALTER TABLE `ticket_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_status`
--
ALTER TABLE `transaction_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_type`
--
ALTER TABLE `transaction_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`user_id`,`role_id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_hire`
--
ALTER TABLE `vehicle_hire`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_maintenance`
--
ALTER TABLE `vehicle_maintenance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_make`
--
ALTER TABLE `vehicle_make`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_model`
--
ALTER TABLE `vehicle_model`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_movement`
--
ALTER TABLE `vehicle_movement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_status`
--
ALTER TABLE `vehicle_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_type`
--
ALTER TABLE `vehicle_type`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for table `client`
--
ALTER TABLE client
  ADD FOREIGN KEY (stateid) REFERENCES state(id);

ALTER TABLE client
  ADD FOREIGN KEY (countryid) REFERENCES country(id);

--
-- Constraints for table `department`
--
ALTER TABLE department
  ADD FOREIGN KEY (managerid) REFERENCES employee(id);

--
-- Constraints for table `employee`
--
ALTER TABLE employee
  ADD FOREIGN KEY (countryid) REFERENCES country(id);
ALTER TABLE employee
  ADD FOREIGN KEY (stateid) REFERENCES state(id);
ALTER TABLE employee
  ADD FOREIGN KEY (employeetypeid) REFERENCES employee_type(id);
ALTER TABLE employee
  ADD FOREIGN KEY (jobtitleid) REFERENCES job_title(id);

--
-- Constraints for table `invoice`
--
ALTER TABLE invoice
  ADD FOREIGN KEY (clientid) REFERENCES client(id);
ALTER TABLE invoice
  ADD FOREIGN KEY (invoicestatusid) REFERENCES invoice_status(id);

--
-- Constraints for table `location`
--
ALTER TABLE location
  ADD FOREIGN KEY (stateid) REFERENCES state(id);
ALTER TABLE location
  ADD FOREIGN KEY (countryid) REFERENCES country(id);

--
-- Constraints for table `state`
--
ALTER TABLE state
  ADD FOREIGN KEY (countryid) REFERENCES country(id);

--
-- Constraints for table `supplier`
--
ALTER TABLE supplier
  ADD FOREIGN KEY (countryid) REFERENCES country(id);
ALTER TABLE supplier
  ADD FOREIGN KEY (stateid) REFERENCES state(id);

--
-- Constraints for table `ticket`
--
ALTER TABLE ticket
  ADD FOREIGN KEY (ticketstatusid) REFERENCES ticket_status(id);
ALTER TABLE ticket
  ADD FOREIGN KEY (employeeid) REFERENCES employee(id);

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD FOREIGN KEY (employeeid) REFERENCES employee(id);
ALTER TABLE `transaction`
  ADD FOREIGN KEY (transactionstatusid) REFERENCES transaction_status(id);
ALTER TABLE `transaction`
  ADD FOREIGN KEY (transactiontypeid) REFERENCES transaction_type(id);
ALTER TABLE `transaction`
  ADD FOREIGN KEY (contactid) REFERENCES contact(id);
ALTER TABLE `transaction`
  ADD FOREIGN KEY (clientid) REFERENCES client(id);
ALTER TABLE `transaction`
  ADD FOREIGN KEY (supplierid) REFERENCES supplier(id);

--
-- Constraints for table `user_role`
--
ALTER TABLE user_role
  ADD FOREIGN KEY (user_id) REFERENCES user(id);
ALTER TABLE user_role
  ADD FOREIGN KEY (role_id) REFERENCES role(id);

--
-- Constraints for table `vehicle`
--
ALTER TABLE vehicle
  ADD FOREIGN KEY (vehiclestatusid) REFERENCES vehicle_status(id);
ALTER TABLE vehicle
  ADD FOREIGN KEY (employeeid) REFERENCES employee(id);
ALTER TABLE vehicle
  ADD FOREIGN KEY (vehiclemakeid) REFERENCES vehicle_make(id);
ALTER TABLE vehicle
  ADD FOREIGN KEY (vehicletypeid) REFERENCES vehicle_type(id);
ALTER TABLE vehicle
  ADD FOREIGN KEY (locationid) REFERENCES location(id);
ALTER TABLE vehicle
  ADD FOREIGN KEY (vehiclemodelid) REFERENCES vehicle_model(id);

--
-- Constraints for table `vehicle_hire`
--
ALTER TABLE vehicle_hire
  ADD FOREIGN KEY (locationid) REFERENCES location(id);
ALTER TABLE vehicle_hire
  ADD FOREIGN KEY (clientid) REFERENCES client(id);
ALTER TABLE vehicle_hire
  ADD FOREIGN KEY (vehicleid) REFERENCES vehicle(id);

--
-- Constraints for table `vehicle_maintenance`
--
ALTER TABLE vehicle_maintenance
  ADD FOREIGN KEY (vehicleid) REFERENCES vehicle(id);
ALTER TABLE vehicle_maintenance
  ADD FOREIGN KEY (supplierid) REFERENCES supplier(id);

--
-- Constraints for table `vehicle_movement`
--
ALTER TABLE vehicle_movement
  ADD FOREIGN KEY (locationid1) REFERENCES location(id);
ALTER TABLE vehicle_movement
  ADD FOREIGN KEY (locationid2) REFERENCES location(id);
ALTER TABLE vehicle_movement
  ADD FOREIGN KEY (vehicleid) REFERENCES vehicle(id);


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;