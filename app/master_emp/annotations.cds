using Employee.master.EmployeeService as service from '../../srv/service';
annotate service.Employees with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : User_ID,
            Label : '{i18n>UserID}',
        },
        {
            $Type : 'UI.DataField',
            Value : Status,
            Label : 'Status',
        },
        {
            $Type : 'UI.DataField',
            Value : User_type,
            Label : '{i18n>UserType}',
        },
        {
            $Type : 'UI.DataField',
            Value : Salutation,
            Label : 'Salutation',
        },
        {
            $Type : 'UI.DataField',
            Value : FirstNAme,
            Label : '{i18n>FirstName}',
        },
        {
            $Type : 'UI.DataField',
            Value : LastName,
            Label : '{i18n>LastName}',
        },
        {
            $Type : 'UI.DataField',
            Value : LoginName,
            Label : '{i18n>LoginName}',
        },
        {
            $Type : 'UI.DataField',
            Value : DisplayName,
            Label : '{i18n>DisplayName}',
        },
    ],
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Personal',
            ID : 'Personal',
            Target : '@UI.FieldGroup#Personal',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Address',
            ID : 'Address',
            Target : '@UI.FieldGroup#Address',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Contacts',
            ID : 'Contacts',
            Target : '@UI.FieldGroup#Contacts',
        },
    ],
    UI.FieldGroup #Address : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : addressDetails.City,
                Label : 'City',
            },
            {
                $Type : 'UI.DataField',
                Value : addressDetails.PostalCode,
                Label : '{i18n>ZippostalCode}',
            },
            {
                $Type : 'UI.DataField',
                Value : addressDetails.Region,
                Label : '{i18n>Country}',
            },
            {
                $Type : 'UI.DataField',
                Value : addressDetails.State,
                Label : 'State',
            },
            {
                $Type : 'UI.DataField',
                Value : addressDetails.Street_Address,
                Label : '{i18n>StreetAddress}',
            },
            {
                $Type : 'UI.DataField',
                Value : addressDetails.Street_Address_2,
                Label : '{i18n>StreetAddress2}',
            },
        ],
    },
    UI.FieldGroup #Contacts : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : contactDetails.Telephone,
                Label : 'Telephone',
            },
            {
                $Type : 'UI.DataField',
                Value : contactDetails.Mobile_Phone,
                Label : '{i18n>MobilePhone}',
            },
            {
                $Type : 'UI.DataField',
                Value : contactDetails.Fax,
                Label : 'Fax',
            },
            {
                $Type : 'UI.DataField',
                Value : contactDetails.Email,
                Label : 'Email',
            },
            {
                $Type : 'UI.DataField',
                Value : contactDetails.Language,
                Label : 'Language',
            },
        ],
    },
    UI.FieldGroup #Personal : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : User_ID,
                Label : '{i18n>UserID}',
            },
            {
                $Type : 'UI.DataField',
                Value : Status,
                Label : 'Status',
            },
            {
                $Type : 'UI.DataField',
                Value : User_type,
                Label : '{i18n>UserType}',
            },
            {
                $Type : 'UI.DataField',
                Value : Salutation,
                Label : 'Salutation',
            },
            {
                $Type : 'UI.DataField',
                Value : FirstNAme,
                Label : '{i18n>FirstName}',
            },
            {
                $Type : 'UI.DataField',
                Value : LastName,
                Label : '{i18n>LastName}',
            },
            {
                $Type : 'UI.DataField',
                Value : LoginName,
                Label : '{i18n>LoginName}',
            },
            {
                $Type : 'UI.DataField',
                Value : DisplayName,
                Label : '{i18n>DisplayName}',
            },
        ],
    },
);

annotate service.Employees with {
    User_ID @Common.FieldControl : #Mandatory
};

annotate service.Employees with {
    Salutation @(
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Employees',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : Salutation,
                    ValueListProperty : 'Salutation',
                },
            ],
        },
        Common.ValueListWithFixedValues : true,
        Common.FieldControl : #Mandatory,
)};

