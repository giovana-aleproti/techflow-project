/* 
* Atualizada por Giovana Aleproti, em 25/04/2026
*/
public with sharing class AccountHandler {
    
    AccountService ps = new AccountService();

    public void beforeInsert(List<Account> newAccounts) {
        ps.checkAccountName(newAccounts);
    }

}