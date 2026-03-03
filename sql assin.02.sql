create database Conference_Management; 
CREATE TABLE conferences (
    conference_id INT PRIMARY KEY,
    conference_name VARCHAR(100),
    location VARCHAR(100),
    start_date DATE,
    end_date DATE
);
CREATE TABLE attendees (
    attendee_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    company VARCHAR(100),
    job_title VARCHAR(100)
);
CREATE TABLE speakers (
    speaker_id INT PRIMARY KEY,
    name VARCHAR(100),
    bio TEXT,
    expertise VARCHAR(100)
);
CREATE TABLE sessions (
    session_id INT PRIMARY KEY,
    conference_id INT,
    session_title VARCHAR(150),
    speaker_id INT,
    schedule_time DATETIME,
    room VARCHAR(50),
    FOREIGN KEY (conference_id) REFERENCES conferences(conference_id),
    FOREIGN KEY (speaker_id) REFERENCES speakers(speaker_id)
);
CREATE TABLE registrations (
    registration_id INT PRIMARY KEY,
    attendee_id INT,
    conference_id INT,
    registration_date DATE,
    ticket_type VARCHAR(50),
    FOREIGN KEY (attendee_id) REFERENCES attendees(attendee_id),
    FOREIGN KEY (conference_id) REFERENCES conferences(conference_id)
);
INSERT INTO conferences (conference_id, conference_name, location, start_date, end_date)
VALUES 
(1, 'Tech Innovators Summit 2025', 'Mumbai', '2025-03-10', '2025-03-12'),
(2, 'AI and Data Science Expo', 'Bangalore', '2025-04-05', '2025-04-07'),
(3, 'Cyber Security Conference', 'Delhi', '2025-05-15', '2025-05-17'),
(4, 'Digital Marketing Forum', 'Pune', '2025-06-20', '2025-06-21'),
(5, 'Cloud Computing Summit', 'Hyderabad', '2025-07-10', '2025-07-12'),
(6, 'Women in Tech Conference', 'Chennai', '2025-08-01', '2025-08-03'),
(7, 'Blockchain & Fintech Meet', 'Kolkata', '2025-09-05', '2025-09-06'),
(8, 'Startup & Innovation Conclave', 'Jaipur', '2025-10-10', '2025-10-11'),
(9, 'Healthcare Technology Forum', 'Ahmedabad', '2025-11-02', '2025-11-04'),
(10, 'Education Tech Symposium', 'Nagpur', '2025-12-15', '2025-12-17');
INSERT INTO attendees (attendee_id, name, email, company, job_title)
VALUES
(1, 'Riya Sharma', 'riya.sharma@email.com', 'TechNova Pvt Ltd', 'Data Analyst'),
(2, 'Amit Verma', 'amit.verma@email.com', 'InnoSoft Solutions', 'Software Engineer'),
(3, 'Sneha Patel', 'sneha.patel@email.com', 'CloudX Technologies', 'Cloud Architect'),
(4, 'Rahul Mehta', 'rahul.mehta@email.com', 'FinEdge Systems', 'Business Analyst'),
(5, 'Priya Nair', 'priya.nair@email.com', 'CyberSafe India', 'Cyber Security Expert'),
(6, 'Arjun Singh', 'arjun.singh@email.com', 'EduTech Global', 'Project Manager'),
(7, 'Neha Desai', 'neha.desai@email.com', 'HealthPlus Analytics', 'Data Scientist'),
(8, 'Vikram Joshi', 'vikram.joshi@email.com', 'AdVision Media', 'Digital Marketer'),
(9, 'Tanvi Kapoor', 'tanvi.kapoor@email.com', 'GreenTech Innovations', 'Product Designer'),
(10, 'Karan Malhotra', 'karan.malhotra@email.com', 'FutureNet Corp', 'AI Engineer');
INSERT INTO speakers (speaker_id, name, bio, expertise)
VALUES
(1, 'Dr. Anjali Rao', 'Expert in AI and Machine Learning with 15 years experience.', 'Artificial Intelligence'),
(2, 'Mr. Rohit Gupta', 'Data analyst specializing in business intelligence and analytics.', 'Data Analytics'),
(3, 'Ms. Sneha Iyer', 'ML engineer focused on building scalable ML systems.', 'Machine Learning'),
(4, 'Dr. Karan Mehta', 'AI researcher and consultant in enterprise AI solutions.', 'Artificial Intelligence'),
(5, 'Mr. Arvind Sharma', 'Cybersecurity strategist with experience in large-scale systems.', 'Cybersecurity'),
(6, 'Ms. Priya Deshmukh', 'Digital marketing specialist with a focus on SEO and social media.', 'Digital Marketing'),
(7, 'Mr. Vikram Choudhary', 'Cloud solutions architect with experience in multi-cloud platforms.', 'Cloud Computing'),
(8, 'Ms. Neha Kapoor', 'Champion for women in technology and tech education.', 'Women in Tech'),
(9, 'Dr. Rajesh Nair', 'Blockchain consultant for financial and fintech applications.', 'Blockchain & Fintech'),
(10, 'Ms. Tanvi Singh', 'Startup mentor and innovation strategist with global experience.', 'Startup & Innovation');
INSERT INTO sessions (session_id, conference_id, session_title, speaker_id, schedule_time, room)
VALUES
(1, 1, 'AI in Everyday Life', 1, '2025-03-10 09:30:00', 'Hall A'),
(2, 1, 'Data Analytics Trends 2025', 2, '2025-03-10 11:00:00', 'Hall B'),
(3, 2, 'Intro to Machine Learning', 3, '2025-04-05 10:00:00', 'Room 101'),
(4, 2, 'Advanced AI Applications', 4, '2025-04-05 14:00:00', 'Room 102'),
(5, 3, 'Cybersecurity Best Practices', 5, '2025-05-15 09:30:00', 'Main Hall'),
(6, 4, 'Digital Marketing Essentials', 6, '2025-06-20 10:00:00', 'Conference Room 1'),
(7, 5, 'Cloud Architecture Design', 7, '2025-07-10 11:30:00', 'Hall C'),
(8, 6, 'Empowering Women in Tech', 8, '2025-08-01 12:00:00', 'Auditorium'),
(9, 7, 'Blockchain in Finance', 9, '2025-09-05 10:00:00', 'Hall D'),
(10, 8, 'Startup Growth Strategies', 10, '2025-10-10 13:30:00', 'Innovation Room');
INSERT INTO registrations (registration_id, attendee_id, conference_id, registration_date, ticket_type)
VALUES
(1, 1, 1, '2025-02-20', 'VIP'),
(2, 2, 1, '2025-02-21', 'Regular'),
(3, 3, 2, '2025-03-25', 'Student'),
(4, 4, 2, '2025-03-26', 'Regular'),
(5, 5, 3, '2025-04-30', 'VIP'),
(6, 6, 4, '2025-05-15', 'Regular'),
(7, 7, 5, '2025-06-01', 'VIP'),
(8, 8, 6, '2025-07-10', 'Regular'),
(9, 9, 7, '2025-08-05', 'Student'),
(10, 10, 8, '2025-09-01', 'VIP');

-- 1.	List all attendees registered for a specific conference
SELECT a.attendee_id, a.name, a.email, a.company, a.job_title
FROM attendees a
JOIN registrations r ON a.attendee_id = r.attendee_id
WHERE r.conference_id = 1;

-- 2.	Count the number of sessions each speaker is presenting
SELECT s.speaker_id, sp.name, COUNT(*) AS session_count
FROM sessions s
JOIN speakers sp ON s.speaker_id = sp.speaker_id
GROUP BY s.speaker_id, sp.name;

-- 3.	Find the most popular session (by number of registered attendees
SELECT se.session_id, se.session_title, COUNT(r.attendee_id) AS total_attendees
FROM sessions se
JOIN registrations r ON se.conference_id = r.conference_id
GROUP BY se.session_id, se.session_title
ORDER BY total_attendees DESC
LIMIT 1;

-- 4.	Calculate the total revenue per conference (based on ticket types).
SELECT 
  r.conference_id,
  SUM(
    CASE 
      WHEN r.ticket_type = 'Standard' THEN 1000
      WHEN r.ticket_type = 'VIP' THEN 2000
      ELSE 0
    END
  ) AS total_revenue
FROM registrations r
GROUP BY r.conference_id;

-- 5.	Identify attendees who have registered for more than one conference.
SELECT a.attendee_id, a.name, COUNT(r.conference_id) AS total_conferences
FROM attendees a
JOIN registrations r ON a.attendee_id = r.attendee_id
GROUP BY a.attendee_id, a.name
HAVING COUNT(r.conference_id) > 1;

-- 6.	List all sessions happening in a specific room at a specific time
SELECT session_id, session_title, schedule_time, room
FROM sessions
WHERE room = 'Hall A'
  AND DATE(schedule_time) = '2025-10-01';

-- 7.	Find speakers who are not assigned to any session
SELECT sp.speaker_id, sp.name
FROM speakers sp
LEFT JOIN sessions s ON sp.speaker_id = s.speaker_id
WHERE s.session_id IS NULL;

-- 8.	Identify the company with the most attendees at a conference.
SELECT a.company, COUNT(a.attendee_id) AS total_attendees
FROM attendees a
JOIN registrations r ON a.attendee_id = r.attendee_id
WHERE r.conference_id = 'C001'
GROUP BY a.company
ORDER BY total_attendees DESC
LIMIT 1;

-- 9.	Calculate the average number of attendees per conference
SELECT AVG(attendee_count) AS avg_attendees
FROM (
  SELECT conference_id, COUNT(attendee_id) AS attendee_count
  FROM registrations
  GROUP BY conference_id
) AS subquery;

CREATE TABLE session_attendance (
    attendance_id INT PRIMARY KEY,
    session_id INT,
    attendee_id INT,
    attendance_status VARCHAR(20),
    FOREIGN KEY (session_id) REFERENCES sessions(session_id),
    FOREIGN KEY (attendee_id) REFERENCES attendees(attendee_id)
);

-- 10.	List attendees who have not attended any sessions they registered for (no-show analysis).
SELECT a.attendee_id, a.name, a.email
FROM attendees a
JOIN registrations r ON a.attendee_id = r.attendee_id
LEFT JOIN session_attendance sa ON a.attendee_id = sa.attendee_id
WHERE sa.session_id IS NULL;



