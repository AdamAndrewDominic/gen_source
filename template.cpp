#include <iostream>
#include <fstream>
#include <string>
#include <getopt.h>

using namespace std ;

/*
 * %%FILE%%
 *
 *   Version 1.0 %%DATE%% %%USER%%
 *
 * this program is...
 *
 */

/*
void usage( char **argv ) {

  cout << "usage : " << argv[ 0 ] << "[options] [input file]" << endl ;
  cout << endl ;
  cout << "ex) " << argv[ 0 ] << " hoge.txt" << endl ;
  cout << "ex) cat hoge.txt | " << argv[ 0 ] << endl ;
  cout << endl ;
  cout << "[options]" << endl ;
  cout << " -h : show help and exit." << endl ;

}

void handle( istream &is ) {

  string buf ;

  while( getline( is, buf ) ) {
    cout << buf << endl ;
  }

}

int main( int argc, char **argv ) {

  int opt ;

  while( ( opt = getopt( argc, argv, "h" ) ) != -1 ) {
    switch( opt ) {
      case 'h' :
        usage( argv ) ;
        return 0 ;
      default :
        usage( argv ) ;
        return -1 ;
    }
  }

  if( argc == 1 ) {
    handle( cin ) ;
  } else if( argc == 2 ) {
    ifstream is( argv[ 1 ] ) ;
    if( ! is ) {
      cout << "failed to file open." << endl ;
      return -1 ;
    }
    handle( is ) ;
  } else {
    usage( argv ) ;
    return -1 ;
  }

  return 0 ;

}
*/

