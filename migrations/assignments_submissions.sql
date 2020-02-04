CREATE TABLE assignments (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255),
  content TEXT,
  day INTEGER,
  chapter INTEGER,
  duration INTEGER
);

CREATE TABLE assignment_submissions (
  id SERIAL PRIMARY KEY NOT NULL,
  assignment_id INTEGER REFERENCES assignments(id) ON DELETE CASCADE,
  student_id iNTEGER REFERENCES students(id) ON DELETE CASCADE,
  duration INTEGER,
  submission_date DATE
);


CREATE TABLE teachers (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255),
  start_date DATE,
  end_date DATE,
  is_active BOOLEAN DEFAULT TRUE
);

CREATE TABLE assistance_requests (
  id SERIAL PRIMARY KEY NOT NULL,
  assignment_id INTEGER REFERENCES assignments(id) ON DELETE CASCADE,
  student_id iNTEGER REFERENCES students(id) ON DELETE CASCADE,
  teacher_id iNTEGER REFERENCES teachers(id) ON DELETE CASCADE,
  created_at TIMESTAMP,
  started_at TIMESTAMP,
  completed_at TIMESTAMP,
  student_feedback TEXT,
  teacher_feedback TEXT
);