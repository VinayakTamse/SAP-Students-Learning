sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'capmdemo',
            componentId: 'GetStudentsObjectPage',
            contextPath: '/GetStudents'
        },
        CustomPageDefinitions
    );
});