using app.lms.db from '../db/lms-model';

service lms_service @(path: '/vin') {


    @readonly
    entity GetStudents as projection on db.Students;

    @readonly
    entity GetCourses as projection on db.Courses;

    @readonly
    entity GetEnrollments as projection on db.Enrollments;


    @readonly
    entity GetContents as projection on db.Contents;

}