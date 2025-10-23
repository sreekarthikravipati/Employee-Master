sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"masteremp/test/integration/pages/EmployeesList",
	"masteremp/test/integration/pages/EmployeesObjectPage"
], function (JourneyRunner, EmployeesList, EmployeesObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('masteremp') + '/test/flpSandbox.html#masteremp-tile',
        pages: {
			onTheEmployeesList: EmployeesList,
			onTheEmployeesObjectPage: EmployeesObjectPage
        },
        async: true
    });

    return runner;
});

