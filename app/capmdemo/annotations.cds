using lms_service as lms from '../../srv/lms-services';

annotate lms.GetStudents with @(
    Capabilities: {
        InsertRestrictions : {
            $Type : 'Capabilities.InsertRestrictionsType',
          Insertable:true  
        },
        UpdateRestrictions : {
            $Type : 'Capabilities.UpdateRestrictionsType',
            Updatable:true
        },
        DeleteRestrictions : {
            $Type : 'Capabilities.DeleteRestrictionsType',
            Deletable:true
        },
        ReadRestrictions : {
            $Type : 'Capabilities.ReadRestrictionsType',
            Readable:true
        },
    },
    UI: {
        LineItem  : [
            {
                Label: 'First Name',
                Value: first_name
            },
            {
                Label: 'Last Name',
                Value: last_name
            }
            
        ],

        Facets  : [
            {
                $Type: 'UI.ReferenceFacet',
                Label: 'Personal Information',
                Target: '@UI.FieldGroup#PersonlaInfo'

            },
            {
                $Type: 'UI.ReferenceFacet',
                Label: 'Enrollment',
                Target: 'enrollment/@UI.LineItem'

            }
            
        ],


         FieldGroup#PersonlaInfo:{
         Data:[
        {
            Label: 'First Name',
            Value: first_name
        },
        {
            Label: 'Last Name',
            Value: last_name

        },
        {
            Label: 'Email',
            Value: email
        },
        {
            Label: 'Date Sign Up',
            Value: date_signup
        }
      ]
      

    },
    HeaderInfo  : {
        $Type : 'UI.HeaderInfoType',
        Title: {
            Value: first_name
        },
        Description: {
            Value: last_name
        }
    },
    },
        
);

annotate lms.GetEnrollments with @(

    UI: {


        LineItem  : [

            {
                Label: 'Identity',
                Value: ID
            },
            {
                Label: 'Course ID',
                Value: course_ID
            }
            
        ],

        Facets  : [
            {
                $Type: 'UI.ReferenceFacet',
                Label: 'Course Details',
                Target: 'course/@UI.FieldGroup#CourseDetails'

            }
        ],


    }

);

annotate lms.GetCourses with @(

    UI: {
        HeaderInfo  : {
            TypeName : 'Courses',
            TypeNamePlural : 'Course',
            Title:{
                Value: ID,
                
           
            },
            Description: {
                Value: course_name
            }
        },
        FieldGroup#CourseDetails : {
            Data: [
                {
                Label: 'Course Name',
                Value: course_name
            },
            {
                Label: 'Course Price in USD',
                Value: course_price
            },
            {
                Label: 'Duration',
                Value: course_duration
            },
            {
                Label: 'Course URL',
                Value: course_url
            }
            ]
            
        },
       
    }

);