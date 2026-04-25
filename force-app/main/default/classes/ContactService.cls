public with sharing class ContactService {
    
    public void checkContactName(List<Contact> newContacts) {
    //public void checkContactName(List<Contact> newContacts, Map<Id, Contact> oldMap) {
        //List<Contact> updatedContacts = new List<Contact>();    
    
        for (Contact contact : newContacts) {
            if (contact.Name == null || contact.Name.trim() == '') {
                contact.addError('O nome do contato é obrigatório.');
            }
            contact.Name = 'CNT|' + contact.Name;
            //updatedContacts.add(contact);
        }
        //update updatedContacts;
        System.debug('Método finalizado.');
    }
    
}