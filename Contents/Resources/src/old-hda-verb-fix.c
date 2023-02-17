#include <stdlib.h>
#include <string.h>

int main(void)
{
  char command[57];

  strcpy(command, "/usr/local/bin/hda-verb 0x19 SET_PIN_WIDGET_CONTROL 0x25");
  system(command);
  
  return 0;
}
