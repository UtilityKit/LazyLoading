//extension controller to display related opportunities
public class ExampleControllerExtension {
  public List<Account>acList {set;get;}
  public ExampleControllerExtension(){
    //get the accout record from the standard controller passed through the instance
    acList = new List<Account>();
     acList = [select id,name from account limit 50];
  }

    @remoteAction
    public static List<Account> fetchMoreData(String offset){
        List<Account> acLis = [select id,name from account limit 50 offset: integer.valueOf(offset)];
        return acLis;
    }

}