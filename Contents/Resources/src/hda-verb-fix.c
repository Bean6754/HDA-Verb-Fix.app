#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

int main(void)
{
  char command[57];

  strcpy(command, "./hda-verb 0x19 SET_PIN_WIDGET_CONTROL 0x25");
  
  /* 
  I have found that the most stable way to run 'hda-verb'
  is to run it 3 times with a small inteval in-between.
  */
  int i = 1;
  while (i < 4)
  {
    system(command);
    printf("\nApplication ran %d time(s).\n", i);
    sleep(1);
    i++;
  }

  return 0;
}
