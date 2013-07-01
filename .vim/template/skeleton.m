#import <Foundation/Foundation.h>

int main(int argc, char const* argv[])
{
  NSAutoreleasePool* pool;
  pool = [[NSAutoreleasePool alloc] init];

  [pool drain];
  return 0;
}
