namespace Employee.master;

using { cuid} from '@sap/cds/common';

entity Address:cuid{
    City:String(50) ;
    PostalCode:String(50);
    Region:String(20);
    State:String(30);
    Street_Address:String(50);
    Street_Address_2:String(50);
    personal : Association to Personal;
    
}

entity Contacts:cuid{
    Telephone:Integer;
    Mobile_Phone:Integer;
    Fax:String;
    Email:String(100);
    Language:String;
    personal : Association to Personal;
}
entity Personal:cuid{
    User_ID:String(50);
    Status:String(20);
    User_type:String(30);
    Salutation:String;
    FirstNAme:String;
    LastName:String;
    LoginName:String;
    DisplayName: String;
addressDetails : Composition of many Address on addressDetails.personal = $self;
    contactDetails : Composition of many Contacts on contactDetails.personal = $self;

}