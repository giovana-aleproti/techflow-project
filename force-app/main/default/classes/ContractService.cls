public with sharing class ContractService {
    
    public void checkContractName(List<Contract> newContracts) {
    //public void checkContractName(List<Contract> newContracts, Map<Id, Contract> oldMap) {
        //List<Contract> updatedContracts = new List<Contract>();    
    
        for (Contract contract : newContracts) {
            if (contract.Name == null || contract.Name.trim() == '') {
                contract.addError('O nome do contrato é obrigatório.');
            }
            contract.Name = 'CTR|' + contract.Name;
            //updatedContracts.add(contract);
        }
        //update updatedContracts;
        System.debug('Método finalizado.');
    }
    
}