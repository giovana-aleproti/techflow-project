public with sharing class Callout {

    public static Map<String, Object> getComplexity() {

        Http http = new Http();
        HttpRequest req = new HttpRequest();

        req.setEndpoint('callout:TechFlow_API/complexity');
        req.setMethod('GET');
        req.setHeader('Content-Type', 'application/json');

        HttpResponse res = http.send(req);

        if (res.getStatusCode() == 200) {
            return (Map<String, Object>) JSON.deserializeUntyped(res.getBody());
        } else {
            throw new CalloutException('Erro na API: ' + res.getBody());
        }
    }
}