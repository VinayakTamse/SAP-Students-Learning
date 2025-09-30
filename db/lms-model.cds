namespace app.lms.db;

entity Contents {

    key ID: Integer;
    url: String(200);
    date_published: Date;
    content_type: String(20);
    course: Association to Courses;



}

entity Courses {
    key ID: Integer;
    course_name: String(80);
    course_url: String(90);
    course_duration: Decimal;
    course_price: Decimal(5, 2);
    published_status: Boolean;
    content: Association to many Contents on content.course = $self;
    enrollment: Association to many Enrollments on enrollment.course = $self;

}


entity Enrollments {
    key ID: Integer;
    course: Association to Courses;
    student: Association to Students;


}

entity Students {

    key email: String(50);
    first_name: String(50);
    last_name: String(50);
    date_signup: Date;
    enrollment: Association to many Enrollments on enrollment.student = $self;
}
