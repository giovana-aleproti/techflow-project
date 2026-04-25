/* 
* Atualizada por Giovana Aleproti, em 25/04/2026
*/
public with sharing class ContractHandler {
    
    ContractService ps = new ContractService();

    public void beforeInsert(List<Contract> newContracts) {
        ps.checkContractName(newContracts);
    }

}