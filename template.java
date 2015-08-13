import java.io.* ;

/**
 *  %%FILE%%
 *  @author %%USER%%
 *  @version 1.0 (%%DATE%%)
 *
 */
/*
public class %%NAME%% {

  public static void usage( ) {
    %%NAME%% me = new %%NAME%%( ) ;
    System.out.println( "Usage : jave " + me.getClass( ).getName( ) + " [filename]" ) ;
    System.out.println( "" ) ;
    System.out.println( "ex)" ) ;
    System.out.println( "  % jave " + me.getClass( ).getName( ) + "hoge.txt" ) ;
    System.out.println( "  % cat hoge.txt | jave " + me.getClass( ).getName( ) ) ;
    return ;
  }

  public static void main( String[ ] args ) {

    InputStreamReader in ;

    if( args.length == 0 ) {
      in = new InputStreamReader( System.in ) ;
    } else if( args.length == 1 ) {
      try {
        in = new FileReader( args[ 0 ] ) ;
      } catch( IOException e ) {
        System.out.println( "failed to open file." ) ;
        return ;
      }
    } else {
      usage( ) ;
      return ;
    }

    try {
      BufferedReader br = new BufferedReader( in ) ;
      String line ;
      while( ( line = br.readLine( ) ) != null ) {
        System.out.println( line ) ;
      }
      br.close( ) ;
      in.close( ) ;
    } catch( IOException e ) {
      System.out.println( e ) ;
    }

  }

}
*/
