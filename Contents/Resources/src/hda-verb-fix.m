#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

  int pid = [[NSProcessInfo processInfo] processIdentifier];
  NSPipe *pipe = [NSPipe pipe];
  NSFileHandle *file = pipe.fileHandleForReading;

  NSTask *task = [[NSTask alloc] init];
  task.launchPath = @"./hda-verb";
  task.arguments = @[@"0x19", @"SET_PIN_WIDGET_CONTROL", @"0x25"];

  task.standardOutput = pipe;

  [task launch];

  NSData *data = [file readDataToEndOfFile];
  [file closeFile];

  NSString *grepOutput = [[NSString alloc] initWithData: data encoding: NSUTF8StringEncoding];
  NSLog (@"hda-verb returned:\n%@", grepOutput);

  [pool drain];
  return 0;
}
