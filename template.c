#include <stdio.h>
#include <getopt.h>

/*
 * %%FILE%%
 *
 *   Version 1.0 %%DATE%% %%USER%%
 *
 * this program is...
 *
 */

/*
#define BUF_NUM 1024

void usage( char **argv ) {

  printf( "usage : %s [options] [input file]\n", argv[ 0 ] ) ;
  printf( "ex) %s hoge.txt\n", argv[ 0 ] ) ;
  printf( "ex) cat hoge.txt | %s\n", argv[ 0 ] ) ;
  printf( "\n" ) ;
  printf( "[options]\n" ) ;
  printf( " -h : show help and exit.\n" ) ;
  return ;

}


int main( int argc, char **argv ) {

  FILE *fp ;
  int opt ;
  char buf[ BUF_NUM ] ;
  unsigned int i = 0 ;

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
    fp = stdin ;
  } else if( argc == 2 ) {
    if( ! ( fp = fopen( argv[ optind ], "r" ) ) ) {
      printf( "failed to open file.\n" ) ;
      return -1 ;
    }
  } else {
    usage( argv ) ;
    return -1 ;
  }

  while( fgets( buf, sizeof( buf ), fp ) != NULL ) {
    printf( "%s", buf ) ;
    i++ ;
  }

  fclose( fp ) ;

  return 0 ;

}
*/
