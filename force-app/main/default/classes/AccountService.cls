public with sharing class AccountService {
    
    public void checkAccountName(List<Account> newAccounts) {
    //public void checkAccountName(List<Account> newAccounts, Map<Id, Account> oldMap) {
        //List<Account> updatedAccounts = new List<Account>();    
    
        for (Account account : newAccounts) {
            if (account.Name == null || account.Name.trim() == '') {
                account.addError('O nome da conta é obrigatório.');
            }
            account.Name = 'ACC|' + account.Name;
            //updatedAccounts.add(account);
        }
        //update updatedAccounts;
        System.debug('Método finalizado.');
    }
    
}