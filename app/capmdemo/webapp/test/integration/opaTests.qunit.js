sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'capmdemo/test/integration/FirstJourney',
		'capmdemo/test/integration/pages/GetStudentsList',
		'capmdemo/test/integration/pages/GetStudentsObjectPage',
		'capmdemo/test/integration/pages/GetEnrollmentsObjectPage'
    ],
    function(JourneyRunner, opaJourney, GetStudentsList, GetStudentsObjectPage, GetEnrollmentsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('capmdemo') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheGetStudentsList: GetStudentsList,
					onTheGetStudentsObjectPage: GetStudentsObjectPage,
					onTheGetEnrollmentsObjectPage: GetEnrollmentsObjectPage
                }
            },
            opaJourney.run
        );
    }
);