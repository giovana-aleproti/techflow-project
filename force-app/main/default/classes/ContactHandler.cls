/* 
* Atualizada por Giovana Aleproti, em 25/04/2026
*/
public with sharing class ContactHandler {
    
    ContactService ps = new ContactService();

    public void beforeInsert(List<Contact> newContacts) {
        ps.checkContactName(newContacts);
    }

}