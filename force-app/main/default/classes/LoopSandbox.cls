public class LoopSandbox {
    
    public static void listTacos(){
        //Create an array of tacos
        List<String> tacos = new List <String>();
        tacos.add('Al Pastor');
        tacos.add('Barbacoa');
        tacos.add('Chicken Fajita');
        Integer numTacos = tacos.size();
        
        //See the size of the taco list/array
        System.debug(numTacos);
        
        //Standard For loop
        for(Integer i = 0; i < numTacos; i++){
            String tacoName = tacos.get(i);
            //System.debug(tacoName);
        }
        
        for(String taco : tacos){
            //Do logic processing
            System.debug(taco);
        }
        
        //Use a Salesforce object as an example
        List<Account> accounts = new List<Account>();
        //Account is type 
        for(Account acc : accounts){
            System.debug(acc.name);
        }
    }
    
    public static void whileTacos(){
        //Create an array of tacos
        List<String> tacos = new List <String>();
        tacos.add('Al Pastor');
        tacos.add('Barbacoa');
        tacos.add('Chicken Fajita');
        Integer numTacos = tacos.size();
        Integer i = 0; //initializer
        
        while(i < numTacos){
            String tacoName = tacos.get(i);
            System.debug(tacoName);
            i++; //increment condition
        }
    }
    
    public static void doWhileTacos(){
        //Create an array of tacos
        List<String> tacos = new List <String>();
        tacos.add('Al Pastor');
        tacos.add('Barbacoa');
        tacos.add('Chicken Fajita');
        Integer numTacos = tacos.size();
        Integer i = 0; //initializer
        do{
          String tacoName = tacos.get(i);
          System.debug(tacoName);
            i++;
        }while(i < numTacos);
    }

    public static void setTacos(){
        //Create an array of tacos
        Set<String> tacoSet = new Set<String>();
        tacoSet.add('Al Pastor');
        tacoSet.add('Barbacoa');
        tacoSet.add('Chicken Fajita');
        Integer numTacos = tacoSet.size();
        
        //You cannot use traditional for loop because get method does not work with set
        for(String taco : tacoSet){
            //Do logic processing
            System.debug(taco);
        }
    }
    
    public static void mapLanguages(){
        Map<String, String> translateEnglish = new Map<String, String>();
        translateEnglish.put('Hello','Hola');
        translateEnglish.put('Bye','Adios');
        translateEnglish.put('Food','Comida');
        //keySet() - Set of Key = Set<String>
        //values() - List of value = List<String>
        
        Set<String> keySet = translateEnglish.keySet();
        
        for(String key: keySet){
            //System.debug('Key = '+ key);
            String value = translateEnglish.get(key);
            System.debug(key + ' = ' + value);
        }
        
    }
}